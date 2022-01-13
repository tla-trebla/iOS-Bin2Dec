//
//  BinaryModel.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation

struct Binary {
    
    var numeral = "0"
    
    func convertToDecimal() -> Int {
        
        var result = 0
        
        for digit in numeral {
            if digit == "0" {
                result *= 2
            } else {
                result = result * 2 + 1
            }
        }
        
        return result
    }
    
    mutating func updateNumeric(_ value: String) {
        self.numeral = value
    }
}
