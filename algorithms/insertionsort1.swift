import Foundation

var n = Int(readLine()!)!
var list = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var element = list[n-1]
func Print(array: [Int]) {
	for element in array {
		print(element, terminator: " ")
	}
	print()
}
for i in (0 ..< n).reversed() { 
	var j = i-1 
	if j >= 0 && list[j] > element {
		list[j+1] = list[j]
		j -= 1
		Print(array: list)
	} else {
		list[j+1] = element
		Print(array: list)
		break	
	}
}