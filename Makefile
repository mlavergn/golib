###############################################
#
# Makefile
#
###############################################

FLAGS  :=
OUTPUT := test

all: fmt build

fmt:
	go fmt *.go

build:
	go build -o lib$(OUTPUT).so -buildmode=c-shared golib

test:
	go test

run:
	go run

clean:
	go clean
	rm lib$(OUTPUT).h
