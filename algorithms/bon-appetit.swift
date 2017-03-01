import Foundation

var values = readLine()!.components(separatedBy: " ").map{Int($0)!}
var costs = readLine()!.components(separatedBy: " ").map{Int($0)!}
var billCharge = Int(readLine()!)!

var n = values[0]
var k = values[1]
var anaAllergy = costs[k]
var totalCost = -anaAllergy

for i in 0..<n {
	totalCost += costs[i]
}

var splitCharge = totalCost/2
var temp = billCharge - splitCharge

if temp == 0 {
	print("Bon Appetit")
} else {
	print(temp)
}