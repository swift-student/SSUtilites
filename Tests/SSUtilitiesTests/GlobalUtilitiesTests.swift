//
//  GlobalUtilitiesTests.swift
//  
//
//  Created by Shawn Gee on 9/28/20.
//

import XCTest
@testable import SSUtilities

final class GlobalUtilitiesTests: XCTestCase {
    func testConfigureProperlyModifiesClass() {
        class TestObject {
            var testProperty = 0
        }
        
        let testObject = configure(TestObject()) {
            $0.testProperty = 10
        }
        
        XCTAssertEqual(testObject.testProperty, 10)
    }
    
    func testConfigureProperlyModifiesStruct() {
        let name = ""
        
        let myName = configure(name) {
            $0 = "Shawn"
        }
        
        XCTAssertEqual(myName, "Shawn")
    }
    
    static var allTests = [
        ("testConfigureProperlyModifiesClass", testConfigureProperlyModifiesClass),
        ("testConfigureProperlyModifiesStruct", testConfigureProperlyModifiesStruct)
    ]
}


