import Foundation
var n = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var sum = 0
var map = [Int: Int]()
for i in 0..<n {
    sum += array[i]
    if let temp = map[array[i]] {
        map[array[i]] = temp + 1
    }
    else {
        map[array[i]] = 1
    }
}

//Mean
var mean = Double(Double(sum)/Double(n))
print(String(format: "%.1f", mean))

//Median
array = array.sorted()
var median: Double = 0
if n % 2 == 0 {
    let temp = array[n/2] + array[(n - 2)/2]
    median = Double(Double(temp)/Double(2))
} else {
    median = Double(array[n/2])
}
print(String(format: "%.1f", median))

//Mode
var mode = array[0]
var count = 1
for i in 0..<n {
    var temp = map[array[i]]
    if temp! > count {
        count = temp!
        mode = array[i]
    }
}
print(mode)
