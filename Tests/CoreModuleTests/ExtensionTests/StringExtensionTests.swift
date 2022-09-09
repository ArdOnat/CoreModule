//
//  StringExtensionTests.swift
//
//
//  Created by Arda Onat on 23.01.2022.
//

@testable import CoreModule
import XCTest

class StringExtensionTests: XCTestCase {
    func testStringOptionalDefaultValueIsEmptyString() {
        let nilString: String? = nil
        XCTAssertEqual(nilString.valueOrEmpty, "")
    }

    func testStringOptionalValueIsCorrect() {
        let nonNilString: String? = "string value"
        XCTAssertEqual(nonNilString.valueOrEmpty, "string value")
    }
}
