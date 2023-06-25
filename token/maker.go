package token

import "time"

// Maker is an interface for managing tokens
type Maker interface {
	// CreateToken creates a new token for a specific username and duration
	CreateToken(user string, duration time.Duration) (string, error)

	// VeryfyToken checks if the token is valid or not
	VeryfyToken(token string) (*Payload, error)
}