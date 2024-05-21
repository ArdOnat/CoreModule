public typealias HTTPHeaders = [String: String]
public typealias Parameters = [String: Any]

public struct Request {
    public let apiEnvironment: ApiEnvironment
    public let path: String
    public let httpMethod: HTTPMethods
    public let urlParameters: Parameters?
    public let bodyParameters: Parameters?
    public let httpHeaders: HTTPHeaders?

    public init(apiEnvironment: ApiEnvironment, path: String, httpMethod: HTTPMethods, urlParameters: Parameters?, bodyParameters: Parameters?, httpHeaders: HTTPHeaders?) {
        self.apiEnvironment = apiEnvironment
        self.path = path
        self.httpMethod = httpMethod
        self.urlParameters = urlParameters
        self.bodyParameters = bodyParameters
        self.httpHeaders = httpHeaders
    }
}
