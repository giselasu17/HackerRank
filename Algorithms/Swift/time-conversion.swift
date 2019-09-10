import Foundation

let time = String(readLine()!)!

var dateFormatter  = DateFormatter()
dateFormatter.dateFormat = "hh:mm:ssa"
let date12 = dateFormatter.date(from: time)
dateFormatter.dateFormat = "HH:mm:ss"
let date24 = dateFormatter.string(from: date12!)
print(date24)