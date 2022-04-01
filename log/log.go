package log

import (
	"io/ioutil"
	"log"
	"sync/atomic"

	"github.com/YandexClassifieds/go-common/log/logrus"
)

var (
	stdLogFlags = log.LstdFlags | log.Lshortfile | log.LUTC

	logger = logrus.NewLogrusLogger(logrus.WithLevel("debug"))

	// NilLogger suppresses all the log messages.
	NilLogger = log.New(ioutil.Discard, "", stdLogFlags)
)

// SuppressOutput suppresses all output from logs if `suppress` is true
// used while testing
func SuppressOutput(suppress bool) {
	if suppress {
		logger.SetOutput(ioutil.Discard)
	}
}

var debug uint32

// SetDebug sets output into debug mode if true passed
func SetDebug(val bool) {
	if val {
		atomic.StoreUint32(&debug, 1)
	} else {
		atomic.StoreUint32(&debug, 0)
	}
}

// Debugf prints debug message according to a format
func Debugf(format string, args ...interface{}) {
	if atomic.LoadUint32(&debug) == 0 {
		return
	}
	logger.Debugf(format, args...)
}

// Infof prints info message according to a format
func Infof(format string, args ...interface{}) {
	logger.Infof(format, args...)
}

// Errorf prints warning message according to a format
func Errorf(format string, args ...interface{}) {
	logger.Errorf(format, args...)
}

// ErrorWithCallDepth prints err into error log using the given callDepth.
func ErrorWithCallDepth(err error, callDepth int) {
	logger.Errorf(err.Error())
}

// Fatalf prints fatal message according to a format and exits program
func Fatalf(format string, args ...interface{}) {
	logger.Fatalf(format, args...)
}
