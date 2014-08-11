package main

import "fmt"
import "math"
import "strconv"

func reverse(s string) string {
	s2 := ""
	for i := 0; i < len(s); i++ {
		s2 = string(s[i]) + s2
	}
	return s2
}

func isPalindromic(n int) bool {
	str := strconv.Itoa(n)
	size := len(str)
	mid := int(size / 2)
	if size%2 == 0 {
		return str[:mid] == reverse(str[mid:])
	} else {
		return str[:mid] == reverse(str[mid+1:])
	}
}

func maxPalindromic(n int) int {
	x := int(math.Pow(float64(10), float64(n)))
	max := 0
	for i := 1; i < x; i++ {
		for j := 1; j <= i; j++ {
			k := i * j
			if isPalindromic(k) && k > max {
				max = k
			}
		}
	}
	return max
}

func main() {
	//fmt.Printf("%d\n", maxPalindromic(2))
	fmt.Printf("%d\n", maxPalindromic(3))
}
