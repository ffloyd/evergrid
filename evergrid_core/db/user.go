package db

// Users loads all users in db
func (c *Connection) Users() *[]User {
	result := []User{}
	c.DB.Find(&result)
	return &result
}
