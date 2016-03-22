package echo

import "github.com/ant0ine/go-json-rest/rest"

// Routes for echo service
func Routes() []*rest.Route {
	routes := []*rest.Route{
		rest.Post("/echo", handler),
	}
	return routes
}
