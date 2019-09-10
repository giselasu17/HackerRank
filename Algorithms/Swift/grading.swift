var n = Int(readLine()!)!
for _ in 0..<n {
	var grade = Int(readLine()!)!
	
    var result = 0
	if grade < 38 {
		result = grade
	} else {
		var temp = grade + 1
		var mult = 0
		if temp % 5 == 0 {
			mult = temp
		} else {
			while temp % 5 != 0 {
				temp += 1
				mult = temp	
			}
		}

		var difference = mult - grade
		if difference < 3 {
			result = mult
		} else {
			result = grade
		}
	}
	print(result)
}