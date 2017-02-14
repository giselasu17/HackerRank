import Foundation
var n = Int(readLine()!)!
func IsPrime (num: Int) -> Bool {
	switch num {
		case 0, 1: 
			return false
		case 2, 3: 
			return true
		default: 
			for i in 2...Int(sqrt(Double(num))) {
					if num % i == 0 {
						return false
					}
			}
			return true
	}
}
while n != 0 {
    let num = Int(readLine()!)!
    let temp = IsPrime (num: num)
    if temp == true {
        print("Prime")
    }
    else {
        print ("Not prime")
    }
    n -= 1
}
