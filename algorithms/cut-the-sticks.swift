import Foundation

var n = Int(readLine()!)!
var scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func MinElement(a: [Int]) -> Int {
	var min = 1000
	for i in 0..<a.count {
		if a[i] < min && a[i] > 0 {
			min = a[i]
		}
	}
	return min
}

var min = MinElement(a: scores)
var sticksCut = n
while sticksCut > 0 && (scores.reduce(0) { $0 + $1 }) != 0 {
	sticksCut = 0
	for i in 0..<scores.count {
		if scores[i] > 0 {
			scores[i] -= min
			sticksCut += 1
		}
	}
	min = MinElement(a: scores)
	print(sticksCut)
}