package status

import "github.com/ant0ine/go-json-rest/rest"

// Routes for echo service
func Routes() []*rest.Route {
	return []*rest.Route{
		rest.Post("/status", handler),
	}
}
