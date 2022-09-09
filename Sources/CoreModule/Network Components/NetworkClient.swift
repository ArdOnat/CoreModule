import Foundation

public struct SuccessResult<T: Decodable> {
    public let decodedResponse: T
    public let httpURLResponse: HTTPURLResponse

    public init(decodedResponse: T, httpURLResponse: HTTPURLResponse) {
        self.decodedResponse = decodedResponse
        self.httpURLResponse = httpURLResponse
    }
}

public protocol NetworkClient {
    func request<T>(_ request: CoreModule.Request, queue: DispatchQueue, completion: @escaping (Result<SuccessResult<T>, NetworkError>) -> Void)
}
