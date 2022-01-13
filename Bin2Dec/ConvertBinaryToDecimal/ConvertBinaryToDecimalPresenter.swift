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
    var router: ConvertBinaryToDecimalRouter?
    
    func presentConvertBinaryToDecimal(_ request: String) {
        interactor?.convertBinary(request)
    }
}
