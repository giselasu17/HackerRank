class Calculator {
    func power(n: Int, p: Int) throws -> Int {
        let nn = Double(n)
        let pp = Double(p)
        let res = Int(pow (nn, pp))
        if n < 0 || p < 0 {
            throw RangeError.NotInRange("n and p should be non-negative")
        }
        return res        
    }
}