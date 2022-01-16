//
//  ConvertBinaryToDecimalRouterTests.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 14/01/22.
//

import XCTest
@testable import Bin2Dec

class ConvertBinaryToDecimalRouterTests: XCTestCase {

    func test_whenInitializeRouter_presenterShouldNotNil() {
        
        let sut = ConvertBinaryToDecimalRouter()
        
        let viewController = sut.createModule()
        
        XCTAssertNotNil(viewController.presenter)
    }

}
