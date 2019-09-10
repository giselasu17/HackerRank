import Foundation

var values = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var magazineWords = String(readLine()!)!.characters.split{$0 == " "}.map(String.init)
var ransomWords = String(readLine()!)!.characters.split{$0 == " "}.map(String.init)

var m = values[0]
var n = values[1]
var ransomNote = [String: Int]()

for index in 0...m-1 {
	var key = magazineWords[index]
	if let value = ransomNote[key] {
		ransomNote[key] = value + 1
	}
	else {
		ransomNote[key] = 1
	}
}
var count = 0
for index in 0...n-1 {
	var key = ransomWords[index]
	var temp = ransomNote[key]
	if temp! > 0 {
		count += 1
		ransomNote[key] = temp! - 1
	}
}
if count == n {
	print("Yes")
}
else {
	print("No")
}