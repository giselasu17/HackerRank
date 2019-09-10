import Foundation

var numbers = String(readLine()!).components(separatedBy: " ").map{ Int($0)! }
var alf = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var string = String(readLine()!).characters.flatMap{String($0)}

var map = [String: Int]()
for i in 0..<26 {
	map[alf[i]] = numbers[i]
}

var max: Int = 0
for i in 0..<string.count {
	let temp: Int! = map[string[i]]
	if temp > max {
		max = temp
	}
}
var area = string.count * 1 * max
print(area)