
import Foundation

var n = Int(readLine()!)!
var data = readLine()!.components(separatedBy: " ").map{ Double($0)! }
var weight = readLine()!.components(separatedBy: " ").map{ Double($0)! }

var weightedMean: Double = 0
var sum: Double = 0
var sumweight: Double = 0
for i in 0..<n {
	sum += Double(data[i]) * Double(weight[i])
	sumweight += Double(weight[i])
}

sumweight = Double(sum)/Double(sumweight)
print(String(format: "%.1f", sumweight))