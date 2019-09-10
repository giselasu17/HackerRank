import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var sum = 0
for i in 0..<n {
    sum += arr[i]
}
print(sum)