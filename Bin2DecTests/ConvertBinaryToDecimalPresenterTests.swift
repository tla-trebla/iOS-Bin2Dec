//
//  ConvertBinaryToDecimalPresenterTests.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest
@testable import Bin2Dec

class ConvertBinaryToDecimalPresenterTests: XCTestCase {

    func test_whenPresentConvertingBinary_viewShouldShowDecimal() {
        
        let sut = ConvertBinaryToDecimalPresenter()
        let outputSpy = ConvertBinaryToDecimalPresenterOutputSpy()
        sut.interactor = ConvertBinaryToDecimalInteractor()
        sut.interactor?.presenter = outputSpy
        
        sut.presentConvertBinaryToDecimal("11")
        
        let result = outputSpy.decimalExpectation
        let expected = 3
        XCTAssertEqual(result, expected)
    }
}
