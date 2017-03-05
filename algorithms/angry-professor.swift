import Foundation
var n = Int(readLine()!)!
while n != 0 {
	var nK = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	var listTimes = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	
	var count = 0
	for i in 0..<listTimes.count {
		if listTimes[i] <= 0 {
			count += 1
		}
	}
	
	if count < nK[1] {
		print("YES")
	} else {
		print("NO")
	}
    n -= 1
}