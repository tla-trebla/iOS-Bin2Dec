//
//  ConvertBinaryToDecimalPresenterOutputSpy.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation
@testable import Bin2Dec

class ConvertBinaryToDecimalPresenterOutputSpy: ConvertBinaryToDecimalPresenterOutput {
    
    var presentDecimalCalled = false
    
    var decimalExpectation = Int()
    
    func displayDecimal(response decimal: Int) {
        presentDecimalCalled = true
        decimalExpectation = decimal
    }
    
    func displayFailure(message: String) {
        presentDecimalCalled = false
    }
}
