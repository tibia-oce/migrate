package main

import (
	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/mysql"
	_ "github.com/golang-migrate/migrate/v4/source/file"

	"github.com/tibia-oce/migrate/src/configs"
	"github.com/tibia-oce/migrate/src/logger"
)

func main() {
	logger.Info("Loading configurations...")

	err := configs.Init()
	if err == nil {
		logger.Debug("Environment variables loaded from '.env'.")
	}

	gConfigs := configs.GetGlobalConfigs()
	gConfigs.Display()

	connectionString := gConfigs.DBConfigs.GetConnectionString()
	m, err := migrate.New("file://migrations", "mysql://"+connectionString)
	if err != nil {
		logger.Panic(err)
	}
	if err := m.Up(); err != nil && err != migrate.ErrNoChange {
		logger.Panic(err)
	}

	logger.Info("Migrations applied successfully!")
}
