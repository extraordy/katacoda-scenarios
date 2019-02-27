package main

import (
	"fmt"
	"log"
	"net/http"
)

func helloFunc(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!\n")
}

func main() {
	http.HandleFunc("/", helloFunc)
	log.Println("Starting Http server")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
