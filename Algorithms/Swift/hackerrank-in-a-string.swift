import Foundation;

var n =  Int(readLine()!)!
for _ in 0..<n {
    var string =  String(readLine()!)!.characters.flatMap{String($0)}

    var i = 0
    var j = 0
    var substring = ["h", "a", "c", "k", "e", "r", "r", "a", "n", "k"]

    while i < string.count && j < substring.count {
        if string[i] == substring[j] {
            j += 1
        }
        i += 1
    }

    if j == 10 {
        print("YES")
    } else {
        print("NO")
    }
}