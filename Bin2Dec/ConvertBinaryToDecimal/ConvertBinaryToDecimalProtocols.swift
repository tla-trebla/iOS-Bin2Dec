//
//  ConvertBinaryToDecimalProtocols.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation

protocol ConvertBinaryToDecimalPresenterInputProtocol {
    
    var view: ConvertBinaryToDecimalViewProtocol? { get set }
    var interactor: ConvertBinaryToDecimalInteractorProtocol? { get set }
    var router: ConvertBinaryToDecimalRouter? { get set }
    
    func presentConvertBinaryToDecimal(_ request: String)
}

protocol ConvertBinaryToDecimalViewProtocol {
    func showDecimal(decimal: Int)
    func showError(message: String)
}

protocol ConvertBinaryToDecimalRouter {
    func createModule() -> ViewController
}

protocol ConvertBinaryToDecimalPresenterOutputProtocol {
    func displayDecimal(response decimal: Int)
    func displayFailure(message: String)
}

protocol ConvertBinaryToDecimalInteractorProtocol {
    
    var presenter: ConvertBinaryToDecimalPresenterOutputProtocol? { get set }
    
    func convertBinary(_ request: String)
}
