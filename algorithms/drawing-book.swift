import Foundation

var totalPages = Int(readLine()!)!
var page = Int(readLine()!)!

var count1 = 0
var count2 = 0
if totalPages == 1 || totalPages == page {
	print(count1)
} else {
	for i in 1...page {
		count1 += 1
	}
	for i in page+1...totalPages {
		 count2 += 1
	}
	if count1/2 < count2/2 {
		print(count1/2)
	} else {
		print(count2/2)
	}
}