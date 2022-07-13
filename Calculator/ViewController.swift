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
    private var displayedValue : Double {
        get {
            guard let currentDisplayValue = Double(displayLabel.text!) else {
                fatalError("Cannot convert number to Double")
            }
            return currentDisplayValue
        } set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isDoneEnteringNumbers = true
        let method = sender.currentTitle
        
        // method if-else tree
        if (method == "+/-") {
            displayedValue = displayedValue * -1
        } else if (method == "AC") {
            displayedValue = 0.0
        } else if (method == "%") {
            displayedValue = displayedValue * 0.01
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
                    let isInteger = floor(displayedValue) == displayedValue
                    
                    if !isInteger {
                        return
                    }
                }
                displayLabel.text?.append(numberValue)
            }
        }
    }
}

