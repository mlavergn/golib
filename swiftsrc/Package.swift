import PackageDescription

let package = Package(
	name: "Main",
	dependencies: [
		.Package(url: "/Users/mlavergn/golang/src/golib/GoSwift", majorVersion: 1)
	]
)
