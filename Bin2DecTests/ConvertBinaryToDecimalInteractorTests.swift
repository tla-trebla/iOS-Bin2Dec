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
        
        let presenterSpy = ConvertBinaryToDecimalPresenterOutputSpy()
        let sut = ConvertBinaryToDecimalInteractor()
        sut.presenter = presenterSpy
        
        sut.convertBinary("0")
        
        XCTAssertTrue(presenterSpy.presentDecimalCalled)
    }
    
    func test_whenConvertIncorrectBinary_executePresenterFailureWithError() {
        
        let presenterSpy = ConvertBinaryToDecimalPresenterOutputSpy()
        let sut = ConvertBinaryToDecimalInteractor()
        sut.presenter = presenterSpy
        
        sut.convertBinary("2")
        
        XCTAssertFalse(presenterSpy.presentDecimalCalled)
    }

}
