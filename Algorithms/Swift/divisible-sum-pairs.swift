import Foundation

var nK = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var n = nK[0]
var k = nK[1]

var count = 0
for i in 0..<n-1 {
	for j in i+1..<n {
		var sum = array[i] + array[j]
		if sum % k == 0 {
			count += 1
		}
	}
}
print(count)