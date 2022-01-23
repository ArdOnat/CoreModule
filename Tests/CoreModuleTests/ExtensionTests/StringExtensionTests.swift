//
//  ExtensionTests.swift
//  
//
//  Created by Arda Onat on 23.01.2022.
//

import XCTest
@testable import CoreModule

class StringExtensionTests: XCTestCase {

    func testStringOptionalDefaultValueIsEmptyString() {
        let nilString: String? = nil
        XCTAssertEqual(nilString.valueOrEmpty, "")
    }
    
    func testStringOptionalValueIsCorrect() {
        let nilString: String? = "string value"
        XCTAssertEqual(nilString.valueOrEmpty, "string value")
    }
}
