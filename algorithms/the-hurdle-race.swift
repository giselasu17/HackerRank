import Foundation

var nK = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var heights = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var n = nK[0]
var k = nK[1]

var beverages = 0

var maxElement = heights.max()
if maxElement! > k {
	beverages = maxElement! - k
}

print(beverages)