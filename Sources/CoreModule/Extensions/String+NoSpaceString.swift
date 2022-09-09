public extension String {
    var nonSpaceString: String {
        replacingOccurrences(of: " ", with: "")
    }
}
