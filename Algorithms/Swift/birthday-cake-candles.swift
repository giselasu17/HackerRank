import Foundation
var n = Int(readLine()!)!
var heightCandles = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var maxheight = heightCandles.max()
var count = 0
for i in 0..<n {
	if heightCandles[i] == maxheight {
		count += 1
	}
}
print(count)