//
//  ConvertBinaryToDecimalInteractorTests.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest
@testable import Bin2Dec

class ConvertBinaryToDecimalInteractorTests: XCTestCase {
    
    var presenterSpy: ConvertBinaryToDecimalPresenterOutputSpy!
    var sut: ConvertBinaryToDecimalInteractorProtocol!
    
    override func setUp() {
        self.presenterSpy = ConvertBinaryToDecimalPresenterOutputSpy()
        self.sut = ConvertBinaryToDecimalInteractor()
    }

    func test_whenConvertBinary_executePresenterSuccessWithDecimal() {
        
        self.sut.presenter = presenterSpy
        
        self.sut.convertBinary("0")
        
        XCTAssertTrue(self.presenterSpy.presentDecimalCalled)
    }
    
    func test_whenConvertIncorrectBinary_executePresenterFailureWithError() {
        
        self.sut.presenter = presenterSpy
        
        self.sut.convertBinary("2")
        
        XCTAssertFalse(self.presenterSpy.presentDecimalCalled)
    }

}
