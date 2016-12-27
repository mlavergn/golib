###############################################
#
# Makefile
#
###############################################

FLAGS  :=
OUTPUT := test

all: fmt build swift

fmt:
	go fmt *.go

build:
	go build -o lib$(OUTPUT).so -buildmode=c-shared golib

test:
	go test

run: all
	./swiftsrc/.build/debug/Main

clean: swiftclean
	go clean
	rm lib$(OUTPUT).h

swift: swiftclean swiftsetup
	cd swiftsrc; swift build -v -Xlinker -L -Xlinker /Users/mlavergn/golang/src/golib

swiftclean:
	cd GoSwift; rm -rf .git;
	cd swiftsrc; rm -rf Packages .build

swiftsetup:
	cd GoSwift; rm -rf .git; git init; git add module.modulemap Package.swift; git commit -m "init"; git tag -a 1.0.0 -m "init";
