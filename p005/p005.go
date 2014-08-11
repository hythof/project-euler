package main

import "fmt"

func isPrime(n int) bool {
	for i := 2; i < n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func seq(a int, b int) []int {
	ret := make([]int, b-a+1)
	for i := 0; i < len(ret); i++ {
		ret[i] = i + a
	}
	return ret
}

func filter(check func(int) bool, xs []int) []int {
	ys := make([]int, 0)
	for _, x := range xs {
		if check(x) {
			ys = append(ys, x)
		}
	}
	return ys
}

func all(check func(int) bool, xs []int) bool {
	for _, x := range xs {
		if !check(x) {
			return false
		}
	}
	return true
}

func sum(xs []int) int {
	s := 0
	for _, x := range xs {
		s += x
	}
	return s
}

func factor(n int) int {
	list := seq(1, n)
	primes := filter(func(a int) bool { return isPrime(a) }, list)
	step := sum(primes)
	for i := step; true; i += step {
		if all(func(a int) bool { return i%a == 0 }, list) {
			return i
		}
	}
	return 0
}

func main() {
	//fmt.Printf("%d\n", factor(10))
	fmt.Printf("%d\n", factor(20))
}
