//
//  ApiEnvironmentTests.swift
//  CoreModuleTests
//
//  Created by Arda Onat on 24.08.2021.
//

import XCTest
@testable import CoreModule

class ApiEnvironmentTests: XCTestCase {
        
    func testApiEnvironmentBaseURLValue() {
        let apiEnvironment = ApiEnvironment(environmentType: MockNetworkEnvironment())
        
        XCTAssertEqual(apiEnvironment.baseURL, "BaseURL"Atfi)
    }
    
    private struct MockNetworkEnvironment: NetworkEnvironment {
        var baseURL: String = "BaseURL"
    }
}
