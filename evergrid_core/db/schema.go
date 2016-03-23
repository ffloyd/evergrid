package db

import (
	"time"
)

// Model is a common part for rails-generated models
type Model struct {
	ID        uint `grom:"primary_key"`
	CreatedAt time.Time
	UpdatedAt time.Time
}

// User is a wrapper for rails-generated users table
type User struct {
	Model
	GithubUID   string
	Email       string
	Nickname    string
	Name        string
	GithubToken string
	AuthJSON    string `sql:"json"`
}
