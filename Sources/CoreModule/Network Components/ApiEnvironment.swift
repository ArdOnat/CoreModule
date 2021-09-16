//
//  ApiEnvironment.swift
//  
//
//  Created by Arda Onat on 23.08.2021.
//

public class ApiEnvironment {
    public let baseURL: String
    
    public init(environmentType: NetworkEnvironment) {
        self.baseURL = environmentType.baseURL
    }
}
