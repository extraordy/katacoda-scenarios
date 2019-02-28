package main

import (
	"fmt"
	"log"
	"net/http"
)

// helloFunc is an handle function to serve a static response
func helloFunc(w http.ResponseWriter, r *http.Request) {
	// PUT THE STATIC RESPONSE LOGIC HERE
}

func main() {
	// DEFINE THE HANDLEFUNC HERE TO ANSWER TO THE "/hello" PATTERN

	// PRINT THE FOLLOWING LOG MESSAGE ON THE SERVER:
	// "Starting http server on port 8080"

	log.Fatal(http.ListenAndServe(":8080", nil))
}
