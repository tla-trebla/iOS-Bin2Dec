//
//  ConvertBinaryToDecimalProtocols.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation

protocol ConvertBinaryToDecimalPresenterOutput {
    func presentDecimal(response decimal: Int)
}

protocol ConvertBinaryToDecimalInteractor {
    
    var presenter: ConvertBinaryToDecimalPresenterOutput? { get set }
    
    func convertBinary(_ request: String)
}
