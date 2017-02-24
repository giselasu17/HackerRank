import Foundation

var n = Int(readLine()!)!
for _ in 0..<n {
	var number = String(readLine()!)!
	var arrayNumber = number.characters.flatMap{Int(String($0))}
	
	var count = 0
	for i in 0..<arrayNumber.count {
		if arrayNumber[i] != 0 {
			if Int(number)! % arrayNumber[i] == 0 {
				count += 1
			}
		}
	}
	print(count)	
}