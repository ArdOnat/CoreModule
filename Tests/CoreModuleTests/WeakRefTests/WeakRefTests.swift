//
//  WeakRefTests.swift
//  WeatherAppTests
//
//  Created by Arda Onat on 24.08.2021.
//

import XCTest
@testable import CoreModule

class WeakRefTests: XCTestCase {
        
        func testWeakRefHoldsAReferenceToTheGivenObject() {
            let anObject = MockObject()
            
            let sut = WeakRef(anObject)
            
            XCTAssertEqual(ObjectIdentifier(sut.object!), ObjectIdentifier(anObject))
        }
        
        func testWeakRefHoldsAWeakReferenceToTheGivenObject() {
            var anObject: MockObject? = MockObject() // anObject retain count = 1
            
            let sut = WeakRef(anObject!)
            
            anObject = nil // anObject retain count = 0 (memory should be freed now)
            
            XCTAssertNil(sut.object, "Object reference should be nil after the object has been freed")
        }
        
        private class MockObject {}
}
