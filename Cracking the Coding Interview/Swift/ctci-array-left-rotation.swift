import Foundation

var numbersAndRotations  = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var elements = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var n = numbersAndRotations[0]
var d = numbersAndRotations[1]
var rotations = d % n

for i in rotations..<n {
	print(elements[i], terminator: " ")
}

for i in 0..<rotations {
	print(elements[i], terminator: " ")
}
