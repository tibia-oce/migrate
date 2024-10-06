package database

import (
	"database/sql"
	"fmt"

	"github.com/tibia-oce/migrate/src/configs"
	"github.com/tibia-oce/migrate/src/logger"
)

const (
	DefaultMaxDbOpenConns = 100
)

// Establishes a connection to the database using the provided configurations.
func PullConnection(gConfigs configs.GlobalConfigs) *sql.DB {
	DB, err := sql.Open("mysql", gConfigs.DBConfigs.GetConnectionString())
	if err != nil {
		logger.Panic(err)
	}

	DB.SetMaxOpenConns(DefaultMaxDbOpenConns)

	return DB
}

// Checks if the database exists, and creates it if it doesn't.
func CreateDatabaseIfNotExists(dbConfigs configs.DBConfigs) error {
	// Connect to MariaDB without specifying a database
	// todo: improve methods for formatting config connection strings
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%d)/", dbConfigs.User, dbConfigs.Pass, dbConfigs.Host, dbConfigs.Port)
	db, err := sql.Open("mysql", dsn)
	if err != nil {
		return err
	}
	defer db.Close()

	// Check if the database exists
	var dbName string
	query := fmt.Sprintf("SHOW DATABASES LIKE '%s'", dbConfigs.Name)
	err = db.QueryRow(query).Scan(&dbName)
	if err == sql.ErrNoRows {
		// Database doesn't exist, create it
		logger.Info(fmt.Sprintf("Database %s does not exist. Creating...", dbConfigs.Name))
		_, err = db.Exec(fmt.Sprintf("CREATE DATABASE %s", dbConfigs.Name))
		if err != nil {
			return err
		}
		logger.Info(fmt.Sprintf("Database %s created successfully.", dbConfigs.Name))
	} else if err != nil {
		return err
	}

	return nil
}
