//
//  ConvertBinaryToDecimalInteractor.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation

class ConvertBinaryToDecimalInteractor: ConvertBinaryToDecimalInteractorProtocol {
    
    var presenter: ConvertBinaryToDecimalPresenterOutput?
    
    private var binary = Binary()
    
    func convertBinary(_ request: String) {
        
        do {
            try binary.updateNumeral(request)
        } catch {
            presenter?.displayFailure(message: error.localizedDescription)
            return
        }
        
        presenter?.displayDecimal(response: binary.convertToDecimal())
    }
}
