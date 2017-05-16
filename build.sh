#!/bin/bash

echo "Builing with environment:"
echo "  GOROOT: `go env GOROOT`"
echo "  GOPATH: `go env GOPATH`"
echo "    GOOS: `go env GOOS`"
echo "  GOARCH: `go env GOARCH`"

GOPATH = `go env GOPATH`
#GOOS=solaris
#GOARCH=amd64
#export GOOS GOARCH

mkdir $GOPATH/bin/solaris
#go get golang.org/x/sys/unix
#go build -ldflags '-linkmode internal' -o $GOPATH/bin/solaris/smartos_exporter github.com/tomi-engel/smartos_exporter

go build -v
