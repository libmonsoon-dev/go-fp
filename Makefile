include .env #shoud contain GO2ROOT variable

GO2GO := $(GO2ROOT)/bin/go tool go2go
GO2PATH := $(GO2ROOT)/src/cmd/go2go/testdata/go2path

translate:
	GO2PATH=$(GO2PATH) $(GO2GO) translate $(shell find src -name "*.go2")

playground:
	GO2PATH=$(GO2PATH) $(GO2GO) run src/cmd/playground/playground.go2

clean:
	find src/ -name "*.go" -delete
