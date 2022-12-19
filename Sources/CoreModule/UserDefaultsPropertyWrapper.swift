import Foundation
// Since our property wrapper's `Value` type isn't optional, but can still contain nil values,
// we'll have to introduce this protocol to enable us to
// cast any assigned value into a type that we can compare against nil:
private protocol AnyOptional {
    var isNil: Bool { get }
}

extension Optional: AnyOptional {
    var isNil: Bool { self == nil }
}

@propertyWrapper
public struct UserDefault<Value> {
    public let key: String
    public let defaultValue: Value
    public var container: UserDefaults

    public init(wrappedValue defaultValue: Value, key: String, container: UserDefaults = .standard) {
        self.defaultValue = defaultValue
        self.key = key
        self.container = container
    }

    public var wrappedValue: Value {
        get {
            container.object(forKey: key) as? Value ?? defaultValue
        }
        set {
            if let optional = newValue as? AnyOptional, optional.isNil {
                container.removeObject(forKey: key)
            } else {
                container.setValue(newValue, forKey: key)
            }
        }
    }
}

public extension UserDefault where Value: ExpressibleByNilLiteral {
    init(key: String, storage _: UserDefaults = .standard) {
        self.init(wrappedValue: nil, key: key)
    }
}
