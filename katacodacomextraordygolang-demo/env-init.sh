#!/bin/sh

GO_LINUX_URL="https://dl.google.com/go/go1.12.linux-amd64.tar.gz"
GOROOT=/goroot
GO_ARCHIVE="go1.12.linux-amd64.tar.gz"

# Download Go binary archive
curl -o /tmp/${GO_ARCHIVE} $GO_LINUX_URL
if [ $? -ne 0 ]; then
    echo "Error: unable to download Go archive" >> /tmp/env-init.log
    exit 1
fi

# Unpack the archive
tar zxvf /tmp/${GO_ARCHIVE} -C /tmp && rm -rf /tmp/${GO_ARCHIVE}

# Remove oldest Go version and install
rm -rf /goroot/* && cp -a /tmp/go/* /goroot
if [ $? -ne 0 ]; then
    echo "Error: unable to copy files to goroot" >> /tmp/env-init.log
    exit 1
fi

# Create the Step1 project directory
mkdir -p ~/tutorial/http-server
if [ $? -ne 0 ]; then
    echo "Error: unable to create the first project folder" >> /tmp/env-init.log
    exit 1
fi

exit 0
