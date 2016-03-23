package db

import (
	"fmt"
	"log"
	"os"

	"github.com/jinzhu/gorm"

	// postgresql adapter for gorm
	_ "github.com/jinzhu/gorm/dialects/postgres"
)

// Connection is a base class for operating with db
type Connection struct {
	DB *gorm.DB
}

// Init connects to current DB
func (c *Connection) Init() {
	var err error
	params := fmt.Sprintf("host=db user=postgres password=\"%s\" dbname=evergrid_development sslmode=disable", os.Getenv("POSTGRES_PASSWORD"))

	c.DB, err = gorm.Open("postgres", params)
	if err != nil {
		log.Fatalf("Got error when connect database, the error is '%v'", err)
	}
}
