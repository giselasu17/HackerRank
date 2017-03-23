import Foundation

var n = Int(readLine()!)!
var scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var countmin = 0
var countmax = 0
var min = scores[0]
var max = scores[0]
for i in 1..<n {
	if scores[i] < min {
		min = scores[i]
		countmin += 1
	}
	if scores[i] > max {
		max = scores[i]
		countmax += 1
	}
}

print("\(countmax)", "\(countmin)")