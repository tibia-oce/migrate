package database

import (
	"database/sql"

	"github.com/tibia-oce/migrate/src/configs"
	"github.com/tibia-oce/migrate/src/logger"
)

const (
	DefaultMaxDbOpenConns = 100
)

func PullConnection(gConfigs configs.GlobalConfigs) *sql.DB {
	DB, err := sql.Open("mysql", gConfigs.DBConfigs.GetConnectionString())
	if err != nil {
		logger.Panic(err)
	}

	DB.SetMaxOpenConns(DefaultMaxDbOpenConns)

	return DB
}
