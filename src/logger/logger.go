package logger

import (
	nested "github.com/antonfisher/nested-logrus-formatter"
	log "github.com/sirupsen/logrus"
)

var logger = log.New()

func Init(level log.Level) {
	logger.SetLevel(level)
	logger.SetFormatter(&nested.Formatter{
		HideKeys: true,
	})
}

func WithFields(fields log.Fields) *log.Entry {
	return logger.WithFields(fields)
}

func Debug(message string) {
	logger.Debug(message)
}

func Info(message string) {
	logger.Info(message)
}

func Warn(message string) {
	logger.Warn(message)
}

func Error(err error) {
	logger.Error(err.Error())
}

func Panic(err error) {
	logger.Panic(err.Error())
}
