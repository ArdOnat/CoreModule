public typealias HTTPHeaders = [String: String]
public typealias Parameters = [String: Any]

public struct Request {
    public var apiEnvironment: ApiEnvironment
    public var path: String
    public var httpMethod: HTTPMethods
    public var urlParameters: Parameters?
    public var bodyParameters: Parameters?
    public var httpHeaders: HTTPHeaders?
}
