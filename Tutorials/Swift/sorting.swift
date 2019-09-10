import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var numSwaps = 0
var temp:Int
for i in 0..<n {
    for j in 0..<n-1 {
        if arr[j] > arr[j+1] {
            temp = arr[j]
			arr[j] = arr[j+1]
			arr[j+1] = temp
            numSwaps += 1
        }
    }
}
print("Array is sorted in \(numSwaps) swaps.")
print("First Element: \(arr[0])")
print("Last Element: \(arr[n-1]) ")