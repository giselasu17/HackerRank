import Foundation

var n = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var positive = 0
var negative = 0
var zeroes = 0

for i in 0..<n {
	if array[i] == 0 {
		zeroes += 1
	} else if array[i] > 0 {
		positive += 1
	} else {
		negative += 1
	}
	
}

var positiveFraction: Double = Double(positive)/Double(n)
var negativeFraction: Double = Double(negative)/Double(n)
var zeroesFraction: Double = Double(zeroes)/Double(n)

print(String(format: "%.6f", positiveFraction))
print(String(format: "%.6f", negativeFraction))
print(String(format: "%.6f", zeroesFraction))