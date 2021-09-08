//
//  ApiEnvironment.swift
//  
//
//  Created by Arda Onat on 23.08.2021.
//

public protocol ApiEnvironment {
    var environmentType: NetworkEnvironment { get set }
    
    init(_ environmentType: NetworkEnvironment)
}

public extension ApiEnvironment {
    var baseURL: String {
        return environmentType.baseURL
    }
}
