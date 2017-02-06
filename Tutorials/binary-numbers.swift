var n = Int(readLine()!)!
var numBinary = String(n, radix:2)

var max = 0
var cont = 0

for index in numBinary.characters.indices {
	if numBinary[index] == "1" {
		cont += 1
	} else {
		cont = 0
	}
	if max < cont {
		max = cont
	}
}
print(max) 