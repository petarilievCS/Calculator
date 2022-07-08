//
//  ViewController.swift
//  Calculator
//
//  Created by Petar Iliev on 08/07/2022
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isDoneEnteringNumbers : Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isDoneEnteringNumbers = true
    
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

