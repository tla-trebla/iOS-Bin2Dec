//
//  BinaryModelTests.swift
//  BinaryModelTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest
@testable import Bin2Dec

class BinaryModelTests: XCTestCase {

    func test_InitializeBinary_ShouldHaveZeroDecimal() {
        
        let sut = Binary()
        
        XCTAssertEqual(sut.convertToDecimal(), 0)
    }
    
    func test_UpdateNumericValue_ShouldHaveCorrectDecimal() {
        
        var sut = Binary()
        sut.updateNumeric("10")
        
        XCTAssertEqual(sut.convertToDecimal(), 2)
    }

}
