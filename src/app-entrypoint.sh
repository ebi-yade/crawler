#!/bin/bash

set -eux

GOOS=linux GOARCH=amd64 go run ./crawler/src/cmd/crawler/main.go