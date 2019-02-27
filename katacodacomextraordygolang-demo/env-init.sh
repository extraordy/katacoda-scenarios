#!/bin/sh

GO_LINUX_URL="https://dl.google.com/go/go1.12.linux-amd64.tar.gz"
GOROOT=/goroot
GO_ARCHIVE="go1.12.linux-amd64.tar.gz"

curl -o /tmp/${GO_ARCHIVE} $GO_LINUX_URL

tar zxvf /tmp/${GO_ARCHIVE} -C /tmp

rm -rf /goroot/* && cp -a /tmp/go/* /goroot

echo "background stuff" > /tmp/background.txt

