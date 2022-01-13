//
//  ConvertBinaryToDecimalPresenterTests.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest

class ConvertBinaryToDecimalPresenterTests: XCTestCase {

    func test_whenPresentConvertingBinary_viewShouldShowDecimal() {
        
        let sut = ConvertBinaryToDecimalPresenterInput()
        let presenterOutputSpy = ConvertBinaryToDecimalPresenterOutputSpy()
        let viewSpy = ConvertBinaryToDecimalViewSpy()
        sut.view = viewSpy
        sut.interactor.presenter = presenterOutputSpy
        
        sut.presentConvertBinaryToDecimal("1011")
        
        let result = presenterOutputSpy.viewController.decimal
        let expectation = 11
        XCTAssertEqual(result, 11)
    }
}
