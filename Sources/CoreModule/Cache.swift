import Foundation

public protocol Caching {
    associatedtype KeyType: AnyObject
    associatedtype StoredValueType: AnyObject

    var cache: NSCache<KeyType, StoredValueType> { get set }
    func getCachedValue(forKey key: KeyType) -> StoredValueType?
    func storeValue(value: StoredValueType, forKey key: NSString, cost: Int)
}

public extension Caching {
    func getCachedValue(forKey key: KeyType) -> StoredValueType? {
        guard let cachedValue = cache.object(forKey: key as KeyType) else {
            return nil
        }

        return cachedValue
    }

    func storeValue(value: StoredValueType, forKey key: KeyType, cost: Int = 0) {
        cache.setObject(value as StoredValueType, forKey: key, cost: cost)
    }
}
