package main

import "fmt"
import "math"

func sumA(xs []int) int {
	s := 0
	for _, x := range xs {
		s += x
	}
	return int(math.Pow(float64(s), 2))
}

func sumB(xs []int) int {
	s := 0
	for _, x := range xs {
		s += int(math.Pow(float64(x), 2))
	}
	return s
}

func diff(n int) int {
	xs := make([]int, n)
	for i := 0; i < n; i++ {
		xs[i] = 1 + i
	}
	return sumA(xs) - sumB(xs)
}

func main() {
	fmt.Printf("%d\n", diff(100))
}
