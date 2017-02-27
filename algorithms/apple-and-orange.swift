import Foundation

var houseS = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var treesP = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var valuesAO = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var distancesA = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var distancesO = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var countA = 0
for i in 0..<valuesAO[0] {
	let distance = treesP[0] + distancesA[i]
	if distance >= houseS[0] && distance <= houseS[1] {
		countA += 1
	}
}

var countO = 0
for i in 0..<valuesAO[1] {
	let distance = treesP[1] + distancesO[i]
	if distance >= houseS[0] && distance <= houseS[1] {
		countO += 1
	}
}
print(countA)
print(countO)