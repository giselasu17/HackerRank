import Foundation

var n = Int(readLine()!)!
for _ in 0..<n {
    var string = String(readLine()!)!
    var arraystring = string.characters.flatMap{String($0)}
    var count = 0
    for i in 0..<arraystring.count-1 {
        if arraystring[i] == arraystring[i+1] {
            count += 1
        }
    }
    print(count)
}
