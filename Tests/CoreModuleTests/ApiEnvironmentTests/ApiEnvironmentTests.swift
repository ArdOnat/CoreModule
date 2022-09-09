//
//  ApiEnvironmentTests.swift
//  CoreModuleTests
//
//  Created by Arda Onat on 24.08.2021.
//

@testable import CoreModule
import XCTest

class ApiEnvironmentTests: XCTestCase {
    func testApiEnvironmentBaseURLValue() {
        let apiEnvironment = ApiEnvironment(environmentType: MockNetworkEnvironment())

        XCTAssertEqual(apiEnvironment.baseURL, "BaseURL")
    }

    private struct MockNetworkEnvironment: NetworkEnvironment {
        var baseURL: String = "BaseURL"
    }
}
