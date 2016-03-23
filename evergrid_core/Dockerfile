FROM golang:1.6

# install deps
RUN go get github.com/ant0ine/go-json-rest/rest
RUN go get github.com/jinzhu/gorm
RUN go get github.com/jinzhu/gorm/dialects/postgres

# update and recompile code
COPY . ./src/evergrid
RUN go install evergrid/db
RUN go install evergrid/server
