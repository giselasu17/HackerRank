import Foundation

var n = Int(readLine()!)!
var numbers : [Double] = readLine()!.components(separatedBy: " ").map{ Double($0)! }
var verysum: Double = 0
for i in 0..<n {
	verysum += numbers[i]
}

print(Int(verysum))