//
//  ViewController.swift
//  preWork
//
//  Created by David Cristobal on 9/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
                
            //ttl tip by multiplying tip* tpercentage
                let tipPercentages = [0.15, 0.18, 0.2]
                let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
                let total = bill + tip
                
                //updtae tip amt
                tipAmountLabel.text = String(format: "$%.2f", tip)
                
                //update ttl amt
                totalLabel.text = String(format: "$%.2f", total)

    }
}

