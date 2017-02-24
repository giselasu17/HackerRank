import Foundation

var n = Int(readLine()!)!
var sumPrimaryDiagonal = 0
var sumSecondaryDiagonal = 0
for i in 0..<n {
	let rows = readLine()!.components(separatedBy: " ").map{Int($0)!}
	sumPrimaryDiagonal += rows[i]
    sumSecondaryDiagonal += rows[n-1-i]
}

var result = abs(sumPrimaryDiagonal - sumSecondaryDiagonal)
print(result)