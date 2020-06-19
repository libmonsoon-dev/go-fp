include .env #shoud contain DEV_GOROOT variable

all:
	GO2PATH=$(DEV_GOROOT)/src/cmd/go2go/testdata/go2path $(DEV_GOROOT)/bin/go tool go2go translate $(shell find src -name "*.go2")

playground:
	GO2PATH=$(DEV_GOROOT)/src/cmd/go2go/testdata/go2path $(DEV_GOROOT)/bin/go tool go2go run src/cmd/playground/playground.go2

clean:
	find src/ -name "*.go" -delete