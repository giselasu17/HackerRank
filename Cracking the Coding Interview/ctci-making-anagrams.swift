import Foundation

var charactersAnagram = [Character: Int]()
var stringA = String(readLine()!)!
var stringB = String(readLine()!)!

for index in stringA.characters.indices {
		var key  = stringA[index]
        if let temp = charactersAnagram[key] {
            charactersAnagram[key] = temp + 1
		}
		else {
			charactersAnagram[key] = 1
		} 
}

for index in stringB.characters.indices {
	var key = stringB[index]
	if let temp = charactersAnagram[key] {
		charactersAnagram[key] = temp - 1
	} 
	else {
		charactersAnagram[key] = -1
	}
}

var result = 0
for (key, value) in charactersAnagram {
	result += abs(value)
}

print(result)