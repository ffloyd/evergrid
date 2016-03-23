package main

import (
	"log"
	"net/http"

	"evergrid/server/services/status"

	"github.com/ant0ine/go-json-rest/rest"
)

func main() {
	api := rest.NewApi()
	api.Use(rest.DefaultDevStack...)

	router, err := rest.MakeRouter(
		status.Routes()...,
	)
	if err != nil {
		log.Fatal(err)
	}

	api.SetApp(router)

	http.ListenAndServe(":8080", api.MakeHandler())

	log.Print("Goodbye!")
}
