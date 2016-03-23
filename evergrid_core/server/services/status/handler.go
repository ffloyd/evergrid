package status

import "github.com/ant0ine/go-json-rest/rest"

// Response is a response struct for /status endpoint
type Response struct {
	Status string `json:"status"`
}

func handler(w rest.ResponseWriter, r *rest.Request) {
	status := &Response{"Ok"}

	w.WriteJson(status)
}
