import Foundation

var n = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

for i in 0..<n {
	print(array[n-i-1], terminator: " ")	
}