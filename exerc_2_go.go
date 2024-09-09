package main

import (
	"fmt"
	"math/rand"
	"time"
)

// Função para calcular o fatorial de um número
func fatorial(n int) int {
	if n == 0 {
		return 1
	}
	return n * fatorial(n-1)
}

func main() {
	// Configurando a semente para números aleatórios
	rand.Seed(time.Now().UnixNano())

	// Gerando um número pseudo-aleatório entre 0 e 10
	num := rand.Intn(10)

	fmt.Printf("Número gerado: %d\n", num)
	fmt.Printf("Fatorial de %d é %d\n", num, fatorial(num))
}
