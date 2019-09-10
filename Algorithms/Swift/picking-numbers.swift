import Foundation
var n = Int(readLine()!)!
var numbers = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var count = 0
var temp = 0

numbers.sort()
for i in 0..<n {
	temp = 0
	for j in i..<n {
		if abs(numbers[i] - numbers[j]) <= 1 {
			temp += 1
		}
	}
	if count < temp {
		count = temp
	}
}

print(count)