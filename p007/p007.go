package main

import "fmt"

func sieveOfEratosthenes(begin int, end int, xs []int) []int {
out:
	for i := begin; i <= end; i += 2 {
		for _, x := range xs {
			if i%x == 0 {
				continue out
			}
		}
		xs = append(xs, i)
	}
	return xs
}

func prime(n int) int {
	xs := make([]int, 1)
	xs[0] = 2
	start := 3
	end := n * 2
	for {
		xs = sieveOfEratosthenes(start, end, xs)
		if len(xs) > n {
			break
		}
		start = xs[len(xs)-1] + 2
		end = start * 2
	}
	return xs[n]
}

func main() {
	fmt.Printf("%d\n", prime(10000))
}
