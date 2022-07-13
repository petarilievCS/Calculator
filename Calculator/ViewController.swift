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
                displayLabel.text?.append(numberValue)
            }
        }
    }
}

