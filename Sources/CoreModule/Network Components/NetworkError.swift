import Foundation

public struct ErroredRequestDetail {
    public let statusCode: Int
    public let errorResponseData: Data?
    public let request: Request

    public init(statusCode: Int, errorResponseData: Data, request: Request) {
        self.statusCode = statusCode
        self.errorResponseData = errorResponseData
        self.request = request
    }
}

///  NetworkError enum can be returned as  an error when an problem occurs while sending an request or interacting with an response.
///  .custom can be used if custom error texts are needed.\
public enum NetworkError: Error {
    case parametersNil
    case encodingFailed
    case decodingFailed
    case missingURL
    case invalidRequest
    case invalidStatusCode(requestDetail: ErroredRequestDetail)
    case invalidBaseURL
    case custom(errorText: String)

    public var errorText: String {
        switch self {
        case .parametersNil: return "Parameters are nil."
        case .encodingFailed: return "Parameter encoding failed."
        case .decodingFailed: return "Response decoding failed."
        case .missingURL: return "URL is nil."
        case .invalidRequest: return "Request is invalid."
        case let .invalidStatusCode(requestDetail): return "Status code \(requestDetail.statusCode) is invalid."
        case .invalidBaseURL: return "Invalid baseURL."
        case let .custom(errorText): return "\(errorText)"
        }
    }

    /// Function for returning ErroredRequestDetail type of data which can be used on the client side to get more information about the error.
    /// -
    /// - Returns: ErroredRequestDetail that includes statusCode (Int), responseData (Data?), request (Request)  that failed.
    public func requestDetails() -> ErroredRequestDetail? {
        switch self {
        case let .invalidStatusCode(requestDetail):
            return requestDetail
        default:
            return nil
        }
    }
}
