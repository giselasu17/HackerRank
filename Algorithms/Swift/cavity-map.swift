import Foundation

var n = Int(readLine()!)!
var dict = [[String]]()
for _ in 0..<n {
	let array = readLine()!.characters.flatMap{String($0)}
	dict.append(array)
}
if dict.count != 1 {
    for i in 1..<dict.count-1 {
        for j in 1..<dict.count-1 {
            if dict[i-1][j] < dict[i][j] && dict[i][j-1] < dict[i][j] && dict[i][j+1] < dict[i][j] && dict[i+1][j] < dict[i][j] {
                dict[i][j] = "X"
            }
        }
    }
}

for i in 0..<dict.count {
	for j in 0..<dict.count {
		print(dict[i][j], terminator: "")
	}
	print()
}