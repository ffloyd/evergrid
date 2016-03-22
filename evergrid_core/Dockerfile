FROM golang:1.6

# install deps
RUN go get github.com/ant0ine/go-json-rest/rest

# update and recompile code
COPY . ./src/evergrid
RUN go install evergrid/server
