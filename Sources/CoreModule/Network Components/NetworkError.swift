//
//  NetworkError.swift
//
//
//  Created by Arda Onat on 23.08.2021.
//

import Foundation

///  NetworkError enum can be returned as  an error when an problem occurs while sending an request or interacting with an response.
///  .custom can be used if custom error texts are needed.\
public enum NetworkError: Error {
    case parametersNil
    case encodingFailed
    case decodingFailed
    case missingURL
    case invalidRequest
    case invalidStatusCode(responseData: Data)
    case invalidBaseURL
    case custom(errorText: String)
    
    public var errorText: String {
        switch self {
        case .parametersNil: return "Parameters are nil."
        case .encodingFailed: return "Parameter encoding failed."
        case .decodingFailed: return "Response decoding failed."
        case .missingURL: return "URL is nil."
        case .invalidRequest: return "Request is invalid."
        case .invalidStatusCode: return "Status code is invalid."
        case .invalidBaseURL: return "Invalid baseURL."
        case .custom(let errorText): return "\(errorText)"
        }
    }
    
    public var responseData: Data? {
        switch self {
        case .invalidStatusCode(let responseData):
            return responseData
        default:
            return nil
        }
    }
}
