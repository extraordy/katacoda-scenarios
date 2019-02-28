# Configure an minimal http server

## Complete the missing source code
The provided source file defines an incomplete http server.
The following packages have been already imported:
- fmt
- log
- net/http

Complete the **helloFunc** function to write the message "Hello World" in the
HTTP response upon an HTTP GET method.  

Define the **http.HandleFunc** call in the main goroutine in order to call
helloFunc on the "/hello" endpoint.

Print the following log message on startup: *"Starting http server on port 8080"*.

Save and test the results with the following command:

```
$ go run main.go
```

## Initialize a Go module
Define a Go module (feature introduced in Go 1.11) in the current directory 
using **github.com/extraordy/http-server** as the module name.

To find out how to configure the module use the following command:

```
$ go mod help
```

## Build the static binary

Build a binary and copy it under */usr/local/bin*, using a single build command. 
Use the following command for the build help:

```
$ go help build
```

Test the binary by running it and connecting on port 8080:

```
$ /usr/local/bin/http-server
```

