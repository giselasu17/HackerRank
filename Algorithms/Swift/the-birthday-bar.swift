import Foundation
var n = Int(readLine()!)!
var list = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var birthday = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var d = birthday[0]
var m = birthday[1]
var sum = 0
var count = 0

if m <= n {
	for i in 0..<m {
		sum += list[i]
	}
	if sum == d {
		count += 1
	}
	var k = 0
	var i = 1
	var j = m
	while j < n {
		sum = sum - list[k] + list[j]
		if sum == d {
			count += 1
		}
		k = i
		i += 1
		j += 1
	}
}

print(count)