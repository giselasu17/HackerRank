import Foundation

var string = String(readLine()!)!
string = string.lowercased()
string = string.components(separatedBy: " ").joined()

var pangrams = [Character: Int]()
for index in string.characters.indices {
	var key = string[index]
    if let temp = pangrams[key] {
		pangrams[key] = temp + 1
	}
	else {
		pangrams[key] = 1
	}
}

if pangrams.count == 26 {
	print("pangram")
} else {
	print("not pangram")
}