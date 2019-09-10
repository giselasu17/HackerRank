import Foundation
var n = Int(readLine()!)!
var result = [String]()
while n != 0 {
    var str = String(readLine()!)!
    var strArray = str.characters.split{$0 == " "}.map(String.init)
    let email = strArray[1]
    if email.range(of:"@gmail.com") != nil {
        result.append(strArray[0])
    }
    n -= 1
}

result = result.sorted(by: {$0 < $1})
for i in 0..<result.count {
    print(result[i])
}