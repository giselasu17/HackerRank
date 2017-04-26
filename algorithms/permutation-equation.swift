import Foundation;

var n = Int(readLine()!)!
var values = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var j = 0 
for x in 1..<n+1 {
	for i in 0..<n {
		if x == values[i] {
			j = i + 1
		}
	}
	print((values.index(of: j))! + 1)
}