//
//  FloatExtensionTests.swift
//  
//
//  Created by Arda Onat on 10.02.2022.
//

import XCTest
@testable import CoreModule

class FloatExtensionTests: XCTestCase {

    func testFloatOptionalDefaultValueIsZero() {
        let nilFloat: Float? = nil
        XCTAssertEqual(nilFloat.valueOrEmpty, 0)
    }
    
    func testFloatOptionalValueIsCorrect() {
        let nonNilFloat: Float? = 30
        XCTAssertEqual(nonNilFloat.valueOrEmpty, 30)
    }
}
