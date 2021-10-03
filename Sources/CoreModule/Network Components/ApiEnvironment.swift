//
//  ApiEnvironment.swift
//  
//
//  Created by Arda Onat on 23.08.2021.
//

/// ApiEnvironment the request will be sent to.
/// Should be initialized with an NetworkEnvironment.
/// Example: ApiEnvironment(environmentType: WeatherForecastNetworkEnvironment.prod)
public class ApiEnvironment {
    public let baseURL: String
    
    public init(environmentType: NetworkEnvironment) {
        self.baseURL = environmentType.baseURL
    }
}
