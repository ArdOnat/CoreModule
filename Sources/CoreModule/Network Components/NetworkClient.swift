import Foundation

public protocol NetworkClient {
    func request<T>(_ request: CoreModule.Request, queue: DispatchQueue, completion: @escaping (Result<SuccessResult<T>, NetworkError>) -> Void)
}
