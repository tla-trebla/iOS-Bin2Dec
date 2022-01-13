//
//  BinaryModelTests.swift
//  BinaryModelTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest
@testable import Bin2Dec

class BinaryModelTests: XCTestCase {
    
    var sut: Binary!
    
    override func setUp() {
        sut = Binary()
    }

    func test_InitializeBinary_ShouldHaveZeroDecimal() {
        XCTAssertEqual(self.sut.convertToDecimal(), 0)
    }
    
    func test_UpdateNumericValue_ShouldHaveCorrectDecimal() {
        try? self.sut.updateNumeral("10")
        XCTAssertEqual(self.sut.convertToDecimal(), 2)
    }
    
    func test_UpdateInvalidNumericValue_ShouldThrownError() {
        XCTAssertThrowsError(try self.sut.updateNumeral("2")) { error in
            XCTAssertEqual(error as? BinaryError, BinaryError.invalidNumeral)
        }
        XCTAssertThrowsError(try self.sut.updateNumeral("a")) { error in
            XCTAssertEqual(error as? BinaryError, BinaryError.invalidInput)
        }
    }

}
