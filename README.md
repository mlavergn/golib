# Golib
--
### Golang shared library template code

Introduction
--
Not quite bare bones Golang shared library code with calling semantics for other languages

The goal of Golib is to act as template code. There's no real functionality outside of basic demos.

A Makefile is provided to demonstrate the build targets, it is entirely optional.

Dependencies
--
No external dependencies

Installation
--
```bash
	# The demo configuration assumes that the project is located in:
	echo $HOME/golang/src/golib

	mkdir -p $HOME/golang/src
	cd $HOME/golang/src
	git clone https://github.com/mlavergn/golib.git; rm -rf golib/.git
	cd golib
```
	
Commands
--
```bash
	# build golib and swift rig
	make all

	# run swift rig
	make swiftrun

	# build golib
	make build
	
	# build swift rig
	make swift
	
	# cleanup build files
	make clean

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
