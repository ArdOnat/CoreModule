//
//  CollectionExtensionTests.swift
//  
//
//  Created by Arda Onat on 23.01.2022.
//

import XCTest
@testable import CoreModule

class CollectionExtensionTests: XCTestCase {

    func testCollectionSafeIndexReturnsNilInsteadOfIndexOutOfRange() {
        let array = [String]()
        XCTAssertNil(array[safe: 0])
    }
    
    func testCollectionSafeIndexReturnsCorrectValue() {
        let array = [1, 2, 3]
        XCTAssertEqual(array[safe: 0], 1)
    }
}
