import Foundation

var actuallyDate  = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var actuallyDay = actuallyDate[0]
var actuallyMonth = actuallyDate[1]
var actuallyYear = actuallyDate[2]

var expectedDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var expectedDay = expectedDate[0]
var expectedMonth = expectedDate[1]
var expectedYear = expectedDate[2]

var fine: Int
if actuallyYear > expectedYear {
    fine = 10000
    print(fine)
} else if actuallyMonth > expectedMonth && actuallyYear == expectedYear {
    fine = 500
    print(fine * (actuallyMonth - expectedMonth))
} else if (actuallyDay <= expectedDay || actuallyMonth < expectedMonth || actuallyYear < expectedYear) {
    fine = 0
    print(fine)
} else if actuallyDay > expectedDay && actuallyMonth == expectedMonth && actuallyYear == expectedYear {
    fine = 15
    print(fine * (actuallyDay - expectedDay))
}