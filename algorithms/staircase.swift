import Foundation

var n = Int(readLine()!)!
for i in 1...n {
	for j in 0..<n-i {
		print(" ", terminator:"")
	}
	for j in 0..<i {
		print("#", terminator:"")
	}
	print()
}