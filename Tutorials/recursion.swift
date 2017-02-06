var n = Int(readLine()!)!

func factorial(n: Int) -> Int {
	return factorialAux(i:n, acum:1)
}
func factorialAux(i: Int, acum: Int) -> Int {
	if i<2 {
		return acum
	} else {
		return factorialAux(i:i-1, acum: i*acum)
	}
}
print(factorial(n:n))