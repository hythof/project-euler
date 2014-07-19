package main

import "fmt"

func main() {
	s := 0
	n := 0
	n1 := 0
	n2 := 1
	for n < 4*1000*1000 {
		n = n1 + n2
		n2 = n1
		n1 = n
		if n%2 == 0 {
			s += n
		}
	}
	fmt.Printf("%d\n", s)
}
