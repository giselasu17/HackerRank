import Foundation;

var values = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var x1 = values[0]
var v1 = values[1]
var x2 = values[2]
var v2 = values[3]

var x = x2 - x1
var v = v1 - v2

if v != 0  && x % v == 0 && x/v >= 0 {
	print("YES")
} else {
	print("NO")
}