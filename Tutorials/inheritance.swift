//Class Student
class Student: Person {
	var testScores: [Int]
	
	//Student class initializer
	init(firstName: String, lastName: String, identification: Int, scores:[Int]) {
        self.testScores = scores
		super.init(firstNameString: firstName, lastNameString: lastName, identificationNumber: identification)
	}
	//Method
	func calculate() -> Character {
		var sum = 0
		var c: Character = "0"
        let length = testScores.count
		for i in 0...length-1 {
			sum += testScores[i]
		}
		let prom = sum/length
		if prom < 40 {
			c = "T"
		} else if prom >= 40 && prom < 55 {
			c = "D"
		} else if prom >= 55 && prom < 70 {
			c = "P"
		} else if prom >= 70 && prom < 80 {
			c = "A"
		} else if prom >= 80 && prom < 90 {
			c = "E"
		} else if prom >= 90 && prom <= 100 {
			c = "O"
		}
		return c
	}
}