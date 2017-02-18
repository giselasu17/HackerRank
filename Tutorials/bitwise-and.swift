import Foundation
var n = Int(readLine()!)!
while n != 0 {
	var elements = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	var N = elements[0]
	var K = elements[1]
		
	var S = [Int]()
	for i in 1...N {
		S.append(i)
	}

	var maximum = 0
	for i in 0..<N-1 {
		for j in i+1..<N {
			let temp = S[i] & S[j]
			if temp > maximum && temp < K {
				maximum = temp
			}
		}
	}
	print(maximum)
	n -= 1
}