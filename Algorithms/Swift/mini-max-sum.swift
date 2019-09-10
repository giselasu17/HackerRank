import Foundation

var numbers : [Int64] = readLine()!.components(separatedBy: " ").map{ Int64($0)! }
var sums = [Int64]()
var sumTotal: Int64 = 0
for i in 0..<numbers.count {
	sumTotal += numbers[i]
}

for i in 0..<numbers.count {
	sums.append(sumTotal - numbers[i])
}

var min: Int64! = sums.min()
var max: Int64! = sums.max()
print(min,max)