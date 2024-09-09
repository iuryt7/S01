package main

import (
	"fmt"
	"math/rand"
	"time"
)

func fatorial(n int) int {
	if n == 0 {
		return 1
	}
	return n * fatorial(n-1)
}

func main() {
	rand.Seed(time.Now().UnixNano())

	num := rand.Intn(10)

	fmt.Printf("Número gerado: %d\n", num)
	fmt.Printf("Fatorial de %d é %d\n", num, fatorial(num))
}
