import Foundation
var ratingA = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var ratingB = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var scoresA = 0
var scoresB = 0

for i in 0..<3 {
	if ratingA[i] > ratingB[i] {
		scoresA += 1
	} else if ratingA[i] < ratingB[i] {
		scoresB += 1
	}
}
print(scoresA, scoresB)