var n = Int(readLine()!)!
var phoneBook = [String: String]()
while n != 0 {
    var str = String(readLine()!)!
    var strArr = str.characters.split{$0 == " "}.map(String.init)
    phoneBook[strArr[0]] = strArr[1]
    n -= 1
}
while let name = readLine() {
    if let phone = phoneBook[name] {
        print("\(name)=\(phone)")
    } else {
        print("Not found")
    }
}