import Foundation

var n = Int(readLine()!)!

for _ in 0..<n {
    var l = Int(readLine()!)!
    var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    var sumL = 0
    var sumR = 0
    var count = 0
    var sumArray = array.reduce(0, {$0 + $1})
    
    for i in 0..<l {
        sumR = sumArray - sumL - array[i]
        if sumL == sumR {
            count += 1
        }
        sumL += array[i]
    }
    
    if count > 0 {
        print("YES")
    } else {
        print("NO")
    }
}
