import PackageDescription

let package = Package(
	name: "Main",
	dependencies: [
		.Package(url: "../GoSwift", majorVersion: 1)
	]
)
