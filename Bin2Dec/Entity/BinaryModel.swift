//
//  BinaryModel.swift
//  Bin2Dec
//
//  Created by Albert Pangestu on 13/01/22.
//

import Foundation

enum BinaryError: Error {
    case invalidNumeral
    case invalidInput
    case inputTooLong
}

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
    
    mutating func updateNumeral(_ value: String) throws {
        
        guard value.count < 9 else {
            throw BinaryError.inputTooLong
        }
        
        guard var input = Int(value) else {
            throw BinaryError.invalidInput
        }
        
        while input != 0 {
            if input % 10 > 1 {
                throw BinaryError.invalidNumeral
            }
            input /= 10
        }
        
        self.numeral = value
    }
}
