//
//  ConvertBinaryToDecimalRouter.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 14/01/22.
//

import Foundation
import UIKit

class ConvertBinaryToDecimalRouter {
    
    func createModule() -> ViewController {
        
        var mainStoryboard: UIStoryboard {
            return UIStoryboard(name: "Main", bundle: Bundle.main)
        }
        
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let presenter = ConvertBinaryToDecimalPresenter()
        let interactor = ConvertBinaryToDecimalInteractor()
        let router = ConvertBinaryToDecimalRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return viewController
    }
}
