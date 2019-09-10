import Foundation
var stringN = String(readLine()!)!
var count = 1
for index in stringN.characters.indices {
	var char = String(stringN[index])
	var str = char.uppercased()
	if str ==  char {
   		count += 1
	}
}
print(count)