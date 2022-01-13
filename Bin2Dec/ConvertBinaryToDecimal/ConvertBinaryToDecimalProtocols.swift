//
//  ConvertBinaryToDecimalProtocols.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation

protocol ConvertBinaryToDecimalPresenterOutputProtocol {
    func displayDecimal(response decimal: Int)
    func displayFailure(message: String)
}

protocol ConvertBinaryToDecimalInteractorProtocol {
    
    var presenter: ConvertBinaryToDecimalPresenterOutputProtocol? { get set }
    
    func convertBinary(_ request: String)
}
