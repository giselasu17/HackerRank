import Foundation
var n = Int(readLine()!)!
var alf = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var map = [String: Int]()
for i in 0..<26 {
    map[alf[i]] = i + 1;
}

for _ in 0..<n {
    var string = String(readLine()!).characters.flatMap{String($0)}
    var stringR = string
    stringR = stringR.reversed()
    var temp = 0
    
    for i in 0..<string.count-1 {
        var str = Int(map[string[i+1]]!)-Int(map[string[i]]!)
        var strR = Int(map[stringR[i+1]]!)-Int(map[stringR[i]]!)
        if abs(str) == abs(strR) {
            temp += 1
        }
    }
    if temp == string.count-1 {
        print("Funny")
    }
    else {
        print("Not Funny")
    }
}
