//
//  NetworkError.swift
//
//
//  Created by Arda Onat on 23.08.2021.
//

import Foundation

public struct ErroredRequestDetail {
    public let statusCode: Int
    public let errorResponseData: Data?
    public let request: Request
    
    public init (statusCode: Int, errorResponseData: Data, request: Request) {
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
        case .invalidStatusCode(let requestDetail): return "Status code \(requestDetail.statusCode) is invalid."
        case .invalidBaseURL: return "Invalid baseURL."
        case .custom(let errorText): return "\(errorText)"
        }
    }
    
    public func requestDetails() -> ErroredRequestDetail? {
        switch self {
        case .invalidStatusCode(let requestDetail):
            return requestDetail
        default:
            return nil
        }
    }
}
