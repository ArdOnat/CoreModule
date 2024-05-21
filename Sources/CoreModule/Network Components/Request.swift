public typealias HTTPHeaders = [String: String]
public typealias Parameters = [String: Any]

/// Enum, structs that conform to this protocol should be created in App and sent to ApiClient module.
public protocol Request {
    var apiEnvironment: ApiEnvironment { get set }
    var path: String { get set }
    var httpMethod: HTTPMethods { get }
    var urlParameters: Parameters? { get set }
    var bodyParameters: Parameters? { get set }
    var httpHeaders: HTTPHeaders? { get set }
}
