import Foundation
var string = String(readLine()!)!
var arraystring = string.characters.flatMap{String($0)}

var countSOS = arraystring.count/3
var i = 0
var count = 0
var SOS = ["S", "O", "S"]
while countSOS != 0 {
	if arraystring[i] != SOS[0] {
		count += 1
	}
	i += 1
	if arraystring[i] != SOS[1] {
		count += 1
	}
	i += 1
	if arraystring[i] != SOS[2] {
		count += 1
	}
	i += 1
	countSOS -= 1
}
print(count)