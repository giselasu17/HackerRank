import Foundation

var firstEntry = readLine()!.components(separatedBy: " ").map{Int($0)!}
var array = readLine()!.components(separatedBy: " ").map{Int($0)!}

var n = firstEntry[0]
var d = firstEntry[1]
var rotations = d%n

for i in rotations..<n {
	print(array[i], terminator:" ")
}

for i in 0..<rotations {
	print(array[i], terminator:" ")
}