import Foundation

var days = Int(readLine()!)!

var m = 5
var result = 0
for i in 0..<days {
	var half = m/2
	m = half * 3
	result += half
}

print(result)