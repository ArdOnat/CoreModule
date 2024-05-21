public typealias HTTPHeaders = [String: String]
public typealias Parameters = [String: Any]

public struct Request {
    public var apiEnvironment: ApiEnvironment
    public var path: String
    public var httpMethod: HTTPMethods
    public var urlParameters: Parameters?
    public var bodyParameters: Parameters?
    public var httpHeaders: HTTPHeaders?

    public init(apiEnvironment: ApiEnvironment, path: String, httpMethod: HTTPMethods, urlParameters: Parameters? = nil, bodyParameters: Parameters? = nil, httpHeaders: HTTPHeaders? = nil) {
        self.apiEnvironment = apiEnvironment
        self.path = path
        self.httpMethod = httpMethod
        self.urlParameters = urlParameters
        self.bodyParameters = bodyParameters
        self.httpHeaders = httpHeaders
    }
}
