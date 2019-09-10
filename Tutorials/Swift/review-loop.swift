import Foundation
var c = Int(readLine()!)!
while c != 0 {
var s = String(readLine()!)!
var pos = 0
var odd = String() // impar
var even = String() // par
    for index in s.characters.indices {
        if pos % 2 == 0 {
            even.insert(s[index], at: even.endIndex)
        } 
        else { 
            odd.insert(s[index], at: odd.endIndex)
        }
        pos += 1
    }
    c -= 1
    print(even, odd)
}  