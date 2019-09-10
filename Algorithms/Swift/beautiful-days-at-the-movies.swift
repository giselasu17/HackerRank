import Foundation

var entry = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var i = entry[0]
var j = entry[1]
var k = entry[2]

func reverseNumber(number: Int) -> Int {
	var rest = 0
	var temp = number
	while temp != 0 {
		rest = (rest + temp%10) * 10
		temp = temp / 10
	} 
	return rest/10
}

var beautiful = 0
while i <= j {
	let reverseNum = reverseNumber(number: i)
	let difference = abs(i - reverseNum)
	if difference % k == 0 {
		beautiful += 1
	}
	i += 1
}

print(beautiful)