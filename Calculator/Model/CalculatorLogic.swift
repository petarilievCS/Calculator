//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Petar Iliev on 13.7.22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var intermediateCalculation: (firstNumber: Double, method: String)?
    
    mutating func performCalculation(with method: String, with value: Double) -> Double? {
        
        switch method {
        case "+/-":
            return (value * -1)
        case "AC":
            return 0.0
        case "%":
            return (value * 0.01)
        case "=":
            return performBinaryCalculation(with: value)
        default:
            intermediateCalculation = (value, method)
        }
        return nil
        
    }
    
    private func performBinaryCalculation(with secondNumber: Double) -> Double? {
        
        if let firstNumber = intermediateCalculation?.firstNumber, let method = intermediateCalculation?.method {
            
            switch method {
            case "+":
                return firstNumber + secondNumber
            case "-":
                return firstNumber - secondNumber
            case "×":
                return firstNumber * secondNumber
            case "÷":
                return firstNumber / secondNumber
            default:
                return 0.0
            }
        }
        return nil
    }
    
}
