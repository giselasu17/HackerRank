import Foundation

var n = Int(readLine()!)!
var mapGlobal = [String: Int]()

for _ in 0..<n {
    var map =  [String: Int]()
	let rocks = String(readLine()!).characters.flatMap{String($0)}
	for j in 0..<rocks.count {
        map[rocks[j]] = 1
	}
    for (key,value) in map {
        if let temp = mapGlobal[key] {
            mapGlobal[key] = temp + 1
        } else {
            mapGlobal[key] = 1
        }
    }
}
var result = 0
for (key,value) in mapGlobal {
	if value == n {
		result += 1
	}
}
print(result)