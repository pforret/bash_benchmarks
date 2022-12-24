package main

import (
    "fmt"
    "time"
)

func main() {
	loc, _ := time.LoadLocation("UTC")
	now := time.Now().In(loc)
	micSeconds := float64(now.Nanosecond()) / 1000000000
    fmt.Printf("%.6f\n",float64(now.Unix()) + micSeconds)
}
