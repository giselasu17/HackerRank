	// Write your code here
    init (a: [Int]) {
		self.elements = a
	}
    func computeDifference() {
        maximumDifference = 0
        let length = self.elements.count
        var res = 0
        for i in 0..<length{
	       for j in i+1..<length {
		      res = abs(self.elements[i] - self.elements[j])
	          if maximumDifference < res {
			     maximumDifference = res	
		      }
	       }
        }
	}