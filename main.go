package main

import "C"

//export FooTimesTwo
func FooTimesTwo(x int) int {
	return x * 2
}

//export FooWorld
func FooWorld(x string) *C.char {
	return C.CString(x + " World")
}

func main() {
}
