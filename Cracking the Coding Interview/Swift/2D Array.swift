import Foundation
var matrix = [[Int]]()
var n = 6

while n != 0 {
	let array = readLine()!.components(separatedBy: " ").map{Int($0)!}
	matrix.append(array)
	n -= 1
}

var max = -90
for i in 0...3 {
	for j in 0...3 {
		let acum = matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] +
					  matrix[i+1][j+1] + 
				     matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]
		if max < acum {
			max = acum
		}
	}	
}

print(max)