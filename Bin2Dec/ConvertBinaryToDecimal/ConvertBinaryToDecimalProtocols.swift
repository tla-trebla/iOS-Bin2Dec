//
//  ConvertBinaryToDecimalProtocols.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

protocol ConvertBinaryToDecimalPresenterInput {
    
    var view: ConvertBinaryToDecimalView? { get set }
    var interactor: ConvertBinaryToDecimalInteractorProtocol? { get set }
    
    func presentConvertBinaryToDecimal(_ request: String)
}

protocol ConvertBinaryToDecimalView {
    func showDecimal(decimal: Int)
    func showError(message: String)
}

protocol ConvertBinaryToDecimalPresenterOutput {
    func displayDecimal(response decimal: Int)
    func displayFailure(message: String)
}

protocol ConvertBinaryToDecimalInteractorProtocol {
    
    var presenter: ConvertBinaryToDecimalPresenterOutput? { get set }
    
    func convertBinary(_ request: String)
}
