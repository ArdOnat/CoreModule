//
//  NetworkError.swift
//
//
//  Created by Arda Onat on 23.08.2021.
//

public enum NetworkError: Error {
    case parametersNil
    case encodingFailed
    case decodingFailed
    case missingURL
    case invalidRequest
    case invalidStatusCode
    case invalidBaseURL
    case custom(errorText: String)
    
    var errorText: String {
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
}
