package main

import "fmt"
import "math"

func primes(n int) []int {
	px := make([]int, 1)
	px[0] = 2
	for i := 3; i <= n; i += 2 {
		limit := int(math.Sqrt(float64(i)))
		is_prime := true
		for j := 3; j <= limit; j += 2 {
			if i%j == 0 {
				is_prime = false
				break
			}
		}
		if is_prime {
			px = append(px, i)
		}
	}
	return px
}

func factories(n int) []int {
	fx := make([]int, 0)
	px := primes(int(math.Pow(float64(n), 0.5)))
	k := n
	for _, x := range px {
		if n%x == 0 {
			k /= x
			fx = append(fx, x)
		}
		if k == 0 {
			return fx
		}
	}
	return fx
}

func main() {
	//fmt.Printf("%v\n", factories(13195))
	fx := factories(600851475143)
	fmt.Printf("%d\n", fx[len(fx)-1])
}
