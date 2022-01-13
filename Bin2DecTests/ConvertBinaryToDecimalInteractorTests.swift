//
//  ConvertBinaryToDecimalInteractorTests.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import XCTest

class ConvertBinaryToDecimalInteractorTests: XCTestCase {

    func test_whenConvertBinary_executePresenterSuccessWithDecimal() {
        
        let sut = ConvertBinaryToDecimalInteractor(presenter: ConvertBinaryToDecimalPresenter())
        
        sut.convertBinary("0")
        
        XCTAssert(ConvertBinaryToDecimalPresenter().presenterSuccessWithDecimal)
    }

}
