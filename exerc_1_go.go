package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	fmt.Print("Digite o valor de a: ")
	fmt.Scanln(&a)
	fmt.Print("Digite o valor de b: ")
	fmt.Scanln(&b)
	fmt.Print("Digite o valor de c: ")
	fmt.Scanln(&c)

	discriminant := b*b - 4*a*c

	if discriminant < 0 {
		fmt.Println("a equacao nao tem resposta real.")
	} else {
		x1 := (-b + math.Sqrt(discriminant)) / (2 * a)
		x2 := (-b - math.Sqrt(discriminant)) / (2 * a)

		fmt.Printf("As solucoes sao: x1 = %.2f e x2 = %.2f\n", x1, x2)
	}
}
