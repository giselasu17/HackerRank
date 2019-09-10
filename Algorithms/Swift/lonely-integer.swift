import Foundation

var n = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var map = [Int:Int]()

for i in 0..<n {
    if let temp = map[array[i]] {
        map[array[i]] = temp + 1
    }
    else {
        map[array[i]] = 1
    }
}

for (key, value) in map {
    if value == 1 {
        print("\(key)")
    }	
}
