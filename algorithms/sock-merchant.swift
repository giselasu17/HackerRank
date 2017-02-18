import Foundation
var socks = Int(readLine()!)!
var socksArray = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var pos = 0
var pairs = 0

for elements in socksArray {
	var socksArrayCopy = socksArray
	socksArrayCopy = socksArrayCopy.filter { $0 == socksArrayCopy[pos] }
	socksArray = socksArray.filter { $0 != socksArray[pos] }
	var pairsCopy = socksArrayCopy.count/2
	pairs += pairsCopy
	pos = 0
	}
print(pairs)
