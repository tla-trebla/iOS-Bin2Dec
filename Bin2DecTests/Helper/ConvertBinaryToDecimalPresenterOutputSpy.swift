//
//  ConvertBinaryToDecimalPresenterOutputSpy.swift
//  Bin2DecTests
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation
@testable import Bin2Dec

class ConvertBinaryToDecimalPresenterOutputSpy: ConvertBinaryToDecimalPresenterOutputProtocol {
    
    var presentDecimalCalled = false
    
    func presentDecimal(response decimal: Int) {
        presentDecimalCalled = true
    }
    
    func presentFailure(message: String) {
        presentDecimalCalled = false
    }
}