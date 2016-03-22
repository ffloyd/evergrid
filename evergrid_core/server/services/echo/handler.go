package echo

import (
	"net/http"

	"github.com/ant0ine/go-json-rest/rest"
)

func handler(w rest.ResponseWriter, r *rest.Request) {
	var message string
	err := r.DecodeJsonPayload(&message)
	if err != nil {
		rest.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.WriteJson(message)
}
