import Foundation
var mealCost   = Double(readLine()!)!
var tipPercent = Double(readLine()!)!
var taxPercent = Double(readLine()!)!
    
var tip = mealCost*(tipPercent/100)
var tax = mealCost*(taxPercent/100)
    
var totalCost = mealCost + tip + tax
var result = lround(totalCost)
print("The total meal cost is", result ,"dollars.")