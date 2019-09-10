import Foundation

var n = Int(readLine()!)!
var list = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func Print(array: [Int]) {
	for element in array {
		print(element, terminator: " ")
	}
	print()
}

for i in 1..<n {
	var j = i
	while j > 0 && list[j-1] > list[j] {
		let temp = list[j]
		list[j] = list[j-1]
		list[j-1] = temp
		j -= 1
	}
	Print(array: list)
}