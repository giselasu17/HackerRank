import Foundation

var n = Int(readLine()!)!
for _ in 0..<n {
	var numbCycles = Int(readLine()!)!
    var result = 1
    if numbCycles == 0 {
        print(result)
    } else {
        for i in 1...numbCycles {
            if i % 2 != 0 {
                result = result * 2
            }
            else {
                result = result + 1
            }			
        }
        print(result)
    }
}