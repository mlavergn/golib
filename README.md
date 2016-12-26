# Golib
--
### Golang shared library template code

Introduction
--
Not quite bare bones Golang shared library code with calling semantics for other languages

The goal of Golib is primarily to act as template code. There's no real functionality outside of being a howto.

A Makefile is provided to encapsulate the build process, it is entirely optional.

Dependencies
--
No external dependencies

Installation
--
```bash
	git clone https://github.com/mlavergn/golib.git; rm -rf golib/.git
	cd golib
	make
	-or-
	go build -o libfoo.so -buildmode=c-shared golib
```

Examples
--
There are two exported functions:

```go

	FooTimesTwo(int) int
	// returns the input times two
	
	FooWorld(string) string
	// returns the input string suffixed with "World"
```

License
--
The [Unlicense](http://choosealicense.com/licenses/unlicense/)
