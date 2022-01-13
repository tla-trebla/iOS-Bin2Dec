//
//  ConvertBinaryToDecimalInteractorTests.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest
@testable import Bin2Dec

class ConvertBinaryToDecimalInteractorTests: XCTestCase {

    func test_whenConvertBinary_executePresenterSuccessWithDecimal() {
        
        let sut = ConvertBinaryToDecimalInteractor(presenter: ConvertBinaryToDecimalPresenterOutput())
        
        sut.convertBinary("0")
        
        XCTAssert(ConvertBinaryToDecimalPresenterOutput().presenterSuccessWithDecimal)
    }

}
