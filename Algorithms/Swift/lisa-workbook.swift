import Foundation

var NK = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var problems = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var n = NK[0]
var k = NK[1]
var index = 1
var result = 0

for i in 0..<n {
	var j = 1
	while j <= problems[i] {
		if j == index {
			result += 1
		}
		if j == problems[i] || j % k == 0 {
			index += 1
		}
		j += 1
	}
}

print(result)