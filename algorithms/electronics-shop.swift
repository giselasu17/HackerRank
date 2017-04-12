import Foundation

var values = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var keyboardPrices = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var pricesUSB = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var money = values[0]
var numberK = values[1]
var numberUSB = values[2]
var count = 0
var max = 0

for i in 0..<numberK {
	for j in 0..<numberUSB {
		let sum = keyboardPrices[i] + pricesUSB[j]
		if sum <= money {
			count += 1
			if sum > max {
				max = sum
			}
		}
	}
}

if count > 0 {
	print(max)
} else {
	print(-1)
}