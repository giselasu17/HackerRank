import Foundation

var trips = Int(readLine()!)!

for _ in 0..<trips {
    var dollars = Int(readLine()!)!
    var flavors = Int(readLine()!)!
    var costs = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
    var flavor1 = 0
    var flavor2 = 0
    var sum = 0
    
    for i in 0..<flavors-1 {
        for j in i+1..<flavors {
            let temp = costs[i] + costs[j]
            if temp >= sum && temp <= dollars {
                sum = temp
                flavor1 = i+1
                flavor2 = j+1
            }
        }
    }
    print("\(flavor1)", "\(flavor2)")
}
