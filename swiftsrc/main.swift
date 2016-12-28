import GoSwift
import Foundation

// strings need conversion
let goParam = GoString(p:"Hello", n:5)
var goResult = GoSwift.FooWorld(goParam)
let result = String(utf8String:goResult!)
print(result!)

// ints are bridged
print(GoSwift.FooTimesTwo(3))