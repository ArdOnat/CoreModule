//
//  ApiEnvironment.swift
//  
//
//  Created by Arda Onat on 23.08.2021.
//

public class ApiEnvironment {
    let baseURL: String
    
    init(environmentType: NetworkEnvironment) {
        self.baseURL = environmentType.baseURL
    }
}
