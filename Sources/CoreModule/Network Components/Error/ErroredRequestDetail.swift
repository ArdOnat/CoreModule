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
