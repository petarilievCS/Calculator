//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Petar Iliev on 13.7.22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    func performCalculation(with method: String, with value: Double) -> Double {
        if (method == "+/-") {
            return (value * -1)
        } else if (method == "AC") {
            return 0.0
        } else if (method == "%") {
            return (value * 0.01)
        }
        return 0.0
    }
    
}
