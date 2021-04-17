#! /bin/bash

set -e

source common.sh

virtualenv ${SYZGEN} --python=$(which python3)

# install golang
# https://golang.org/doc/install
if [[ ! -f "go1.15.6.darwin-amd64.tar.gz" ]]; then
    curl -o go1.15.6.darwin-amd64.tar.gz https://dl.google.com/go/go1.15.6.darwin-amd64.tar.gz
    tar -xzf go1.15.6.darwin-amd64.tar.gz
fi

echo "GOROOT=\"${GOROOT}\"" >> $VIRTUAL_ENV
echo "export GOROOT" >> $VIRTUAL_ENV
echo "GOPATH=\"${GOPATH}\"" >> $VIRTUAL_ENV
echo "export GOPATH" >> $VIRTUAL_ENV


