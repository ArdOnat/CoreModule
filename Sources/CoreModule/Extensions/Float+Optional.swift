public extension Optional where Wrapped == Float {
    var valueOrEmpty: Float {
        switch self {
        case .none:
            return 0
        case let .some(wrapped):
            return wrapped
        }
    }
}
