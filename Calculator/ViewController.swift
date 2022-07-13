//
//  ViewController.swift
//  Calculator
//
//  Created by Petar Iliev on 08/07/2022
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isDoneEnteringNumbers : Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isDoneEnteringNumbers = true
        
        let number = Double(displayLabel.text!)!
        let method = sender.currentTitle
        
        // method if-else tree
        if (method == "+/-") {
            displayLabel.text = String(number * -1)
        } else if (method == "AC") {
            displayLabel.text = "0"
        } else if (method == "%") {
            displayLabel.text = String(number / 100.0)
        }
    
    }

    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            
            // start new number
            if (isDoneEnteringNumbers) {
                displayLabel.text = numberValue
                isDoneEnteringNumbers = false
                // continue adding numbers
            } else {
                
                if (numberValue == ".") {
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("Cannot convert number to Double")
                    }
                    
                    let isInteger = floor(currentDisplayValue) == currentDisplayValue
                    
                    if !isInteger {
                        return
                    }
                }
                displayLabel.text?.append(numberValue)
            }
        }
    }
}

