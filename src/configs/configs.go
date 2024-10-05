package configs

import (
	"os"
	"strconv"

	"github.com/joho/godotenv"
	"github.com/tibia-oce/migrate/src/logger"
)

type Config interface {
	Format() string
}

type GlobalConfigs struct {
	DBConfigs DBConfigs
}

// Init only works for variables that are not yet defined. /*
func Init() error {
	return godotenv.Load(".env")
}

func (c *GlobalConfigs) Display() {
	logger.Info(c.DBConfigs.format())
}

func GetGlobalConfigs() GlobalConfigs {
	return GlobalConfigs{
		DBConfigs: GetDBConfigs(),
	}
}

func GetEnvInt(key string, defaultValue ...int) int {
	value := os.Getenv(key)
	if len(value) == 0 && len(defaultValue) > 0 {
		return defaultValue[0]
	}

	intValue, err := strconv.Atoi(value)
	if err != nil {
		logger.Error(err)
		return 0
	}

	return intValue
}

func GetEnvStr(key string, defaultValue ...string) string {
	value := os.Getenv(key)
	if len(value) == 0 && len(defaultValue) > 0 {
		return defaultValue[0]
	}

	return value
}
