import Foundation

var n = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var distances = [Int]()
for i in 0..<n-1 {
	for j in i+1..<n{
		if array[i] == array[j] {
			let distance = abs(i-j)
			distances.append(distance)
		}		
	}
}

var minDistance = 0
if distances.count > 0 {
    minDistance = distances.min()!
 } else {
    minDistance = -1
 }
print(minDistance)