import Foundation
func readArray(_ s: String, count: Int) -> [Int] { 
    var result: [Int] = [] 
    result.reserveCapacity(count) 
    var n = 0 
    let scanner = Scanner(string: s) 
    while scanner.scanInt(&n) { 
        result.append(n) 
    } 
    return result 
}

let n = Int(readLine()!)!
let listA = readArray(readLine()!, count: n)
let m = Int(readLine()!)!
let listB = readArray(readLine()!, count: m)

var numbers = [Int](repeating: 0, count: 10001)
var min = 10000
var max = 0

for i in 0..<m {
	var x = listB[i]
	if x > max {
		max = x
	}
	if x < min {
		min = x
	}
	numbers[x] += 1
}
for i in 0..<n {
	var x = listA[i]
	if x > max {
		max = x
	}
	if x < min {
		min = x
	}
	numbers[x] -= 1
}

for i in min...max {
	if numbers[i] != 0 {
		print(i, terminator: " ")
	}
}