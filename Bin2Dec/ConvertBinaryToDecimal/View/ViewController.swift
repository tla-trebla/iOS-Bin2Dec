//
//  ViewController.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter: ConvertBinaryToDecimalPresenterInputProtocol?
    
    // MARK: - IBOutlets
    @IBOutlet weak var decimalResultLabel: UILabel!
    @IBOutlet weak var numeralTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - IBActions
    @IBAction func convertBinaryButtonPressed(_ sender: Any) {
    }
    
}

// MARK: - Presenter Output to View (Presenter -> View)
extension ViewController: ConvertBinaryToDecimalViewProtocol {
    
    func showDecimal(decimal: Int) {
        <#code#>
    }
    
    func showError(message: String) {
        <#code#>
    }
}
