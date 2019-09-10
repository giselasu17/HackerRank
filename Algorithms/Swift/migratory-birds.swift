import Foundation
var n = Int(readLine()!)!
var typeBirds = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var numberBirds = [1:0, 2:0, 3:0, 4:0, 5:0]
for i in 0..<n {
	if let temp = numberBirds[typeBirds[i]] {
		numberBirds[typeBirds[i]] = temp + 1
	} else {
		numberBirds[typeBirds[i]] = 1
	}
}

var minIndex = 0
var max = 0
for (key, value) in numberBirds {
	if value > max {
		max = value
		minIndex = key
	} else if value == max {
		if minIndex > key {
			minIndex = key
		}
	}
}
print (minIndex)