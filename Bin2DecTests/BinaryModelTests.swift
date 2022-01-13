//
//  BinaryModelTests.swift
//  BinaryModelTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest

class BinaryModelTests: XCTestCase {

    func test_InitializeBinary_ShouldHaveZeroDecimal() {
        
        let sut = Binary()
        
        XCTAssertEqual(sut.convertToDecimal(), 0)
    }

}
