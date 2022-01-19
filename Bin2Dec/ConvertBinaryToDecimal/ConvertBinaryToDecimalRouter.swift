//
//  ConvertBinaryToDecimalRouter.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 14/01/22.
//

import UIKit

class ConvertBinaryToDecimalRouter {
    
    func createModule() -> ViewController {
        
        var mainStoryboard: UIStoryboard {
            return UIStoryboard(name: "Main", bundle: Bundle.main)
        }
        
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let presenter = ConvertBinaryToDecimalPresenter()
        let interactor = ConvertBinaryToDecimalInteractor()
        
        presenter.interactor = interactor
        presenter.view = viewController
        interactor.presenter = presenter
        viewController.presenter = presenter
        
        return viewController
    }
}
