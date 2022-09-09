public protocol UserInputtable {
    var isValidInput: Bool { get }
    func showError()
    func hideError()
}
