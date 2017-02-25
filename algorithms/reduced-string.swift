	import Foundation
	var string = String(readLine()!)!
	var arraystring = string.characters.flatMap{String($0)}
	var n = arraystring.count
	var flag = false
	while flag == false {
		flag = true
		for var i in 0..<n {
			if i + 1 < n {
				if arraystring[i] == arraystring[i+1] {
					arraystring.remove(at:i+1)
					arraystring.remove(at:i)
					i = i - 1
					n = arraystring.count
					flag = false
				}	
			}
		}
		
	}
	
	if arraystring.isEmpty {
		print("Empty String")
	}
	else {
		for i in 0..<arraystring.count {
			print(arraystring[i], terminator:"")
		}
	}