import Foundation;

var n = Int(readLine()!)!

var array = [String]()
for _ in 0..<n {
	let string = String(readLine()!)!
	array.append(string)
}

var q = Int(readLine()!)!
for _ in 0..<q {
	var count = 0
	let query = String(readLine()!)!
	for i in 0..<array.count {
		if array[i] == query {
			count += 1
		}
	}
	print(count)
}