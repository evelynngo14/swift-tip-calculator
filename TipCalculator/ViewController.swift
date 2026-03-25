//
//  ContentView.swift
//  TipCalculator
//
//  Created by Evelyn N. on 3/24/26.
//

import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupUI() {
        amountTextField.placeholder = "Enter bill amount"
        amountTextField.keyboardType = .decimalPad
    }
    
    @IBAction func calculate15Percent(_sender: UIButton) {
        calculateTip(percentage:0.15)
    }
    
    @IBAction func calculate18Percent(_sender: UIButton) {
        calculateTip(percentage: 0.18)
    }
    
    @IBAction func calculate20Percent(_sender: UIButton) {
        calculateTip(percentage: 0.2)
    }
    
    func calculateTip(percentage: Double) {
        guard let text = amountTextField.text, let billAmount = Double(text) else {
            resultLabel.text = "Enter a valid number"
            return
        }
        let tip = billAmount * percentage
        let total = billAmount + tip
        
        resultLabel.text = "Tip Amount: $\(tip), Total Amount: $\(total)"
        
        view.endEditing(true)
    }
}
