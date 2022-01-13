//
//  ConvertBinaryToDecimalPresenter.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 14/01/22.
//

import Foundation

// MARK: - Presenter Input (View -> Presenter)
class ConvertBinaryToDecimalPresenter: ConvertBinaryToDecimalPresenterInputProtocol {
    
    var view: ConvertBinaryToDecimalViewProtocol?
    var interactor: ConvertBinaryToDecimalInteractorProtocol?
    var router: ConvertBinaryToDecimalRouterProtocol?
    
    func presentConvertBinaryToDecimal(_ request: String) {
        interactor?.convertBinary(request)
    }
}

// MARK: - Presenter Output (Interactor -> Presenter)
extension ConvertBinaryToDecimalPresenter: ConvertBinaryToDecimalPresenterOutputProtocol {
    
    func displayDecimal(response decimal: Int) {
        view?.showDecimal(decimal: decimal)
    }
    
    func displayFailure(message: String) {
        view?.showError(message: message)
    }
}
