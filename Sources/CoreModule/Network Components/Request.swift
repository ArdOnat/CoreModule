//
//  Request.swift
//
//
//  Created by Arda Onat on 23.08.2021.
//

public typealias HTTPHeaders = [String: String]
public typealias Parameters = [String: Any]

public protocol Request {
    var apiEnvironment : ApiEnvironment { get set }
    var path: String { get }
    var httpMethod: HTTPMethods { get }
    var urlParameters: Parameters? { get }
    var bodyParameters: Parameters? { get }
    var httpHeaders: HTTPHeaders? { get }
}
