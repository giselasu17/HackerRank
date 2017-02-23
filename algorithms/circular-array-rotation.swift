import Foundation

var integersNKQ = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var n = integersNKQ[0]
var k = integersNKQ[1]
var q = integersNKQ[2]

var rotations = k % n
var arrayRotation = [Int]()

for i in n - rotations..<n {
	arrayRotation.append(array[i])
}

for i in 0..<n - rotations {
	arrayRotation.append(array[i])
}

while q != 0 {
	var query = Int(readLine()!)!
	print(arrayRotation[query])
	q -= 1
}