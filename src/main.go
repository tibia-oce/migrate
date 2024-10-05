package main

import (
	"time"

	"github.com/tibia-oce/migrate/src/configs"
	"github.com/tibia-oce/migrate/src/logger"
)

var initDelay = 200

func main() {
	logger.Info("Loading configurations...")

	err := configs.Init()
	if err == nil {
		logger.Debug("Environment variables loaded from '.env'.")
	}

	gConfigs := configs.GetGlobalConfigs()
	time.Sleep(time.Duration(initDelay) * time.Millisecond)
	gConfigs.Display()
}
