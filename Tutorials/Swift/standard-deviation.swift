import Foundation

var n = Int(readLine()!)!
var list = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var sum = 0
for i in 0..<n {
	sum += list[i]
}

var mean = Double(sum)/Double(n)
var acumm: Double = 0

for i in 0..<n {
	let distance = Double(list[i]) - mean
	acumm += pow(distance,2)
}

var standardDeviation = sqrt(acumm / Double(n))
print(String(format: "%.1f", standardDeviation))