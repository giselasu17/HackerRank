func stringToInt(inputString: String) throws -> Int {
    let n = Int(inputString)
    guard n != nil else {throw StringToIntTypecastingError.BadString}
    return n!
}