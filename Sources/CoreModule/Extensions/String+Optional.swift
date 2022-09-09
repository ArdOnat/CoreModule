public extension Optional where Wrapped == String {
    var valueOrEmpty: String {
        switch self {
        case .none:
            return ""
        case let .some(wrapped):
            return wrapped
        }
    }
}
