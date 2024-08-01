package main

import (
	"fmt"
	"net/url"
)

func main() {
	// var t *url.URL
	u, _ := url.Parse("https://httpbin.org/get?dog=kitty")
	fmt.Println(*u)
}
