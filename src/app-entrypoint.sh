#!/bin/bash

set -eux

cd $PROJECT
GOOS=linux GOARCH=amd64 go run ./cmd/${PROJECT}main.go