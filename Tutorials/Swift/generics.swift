struct Printer<T> {
	/**
	*    Name: printArray
	*    Print each element of the generic array on a new line. Do not return anything.
	*    @param A generic array
	**/
    func printArray<T> (array: [T]) {
        for i in 0..<array.count {
            print(array[i])
        }
    }
}