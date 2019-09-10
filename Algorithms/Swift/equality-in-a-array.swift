import Foundation
var n = Int(readLine()!)!
var elements = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var min = n
for i in 0..<n {
	let temp = elements[i]
	var arrayE = elements
	arrayE = arrayE.filter { $0 == temp}
	var count = elements.count - arrayE.count
	if min > count {
		min = count
	}
}

print(min)