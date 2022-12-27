import Foundation

public struct SuccessResult<T: Decodable> {
    public let decodedResponse: T
    public let httpURLResponse: HTTPURLResponse

    public init(decodedResponse: T, httpURLResponse: HTTPURLResponse) {
        self.decodedResponse = decodedResponse
        self.httpURLResponse = httpURLResponse
    }
}
