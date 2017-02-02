//
//  ViewController.swift
//  CalcTestForGeorge
//
//  Created by Clinton D'Souza on 02/02/17.
//  Copyright © 2017 Clinton D'Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    var initialValue = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTextField.addTarget(self, action: #selector(self.calculateTotal), for: UIControlEvents.editingChanged)
        secondTextField.addTarget(self, action: #selector(self.calculateTotal), for: UIControlEvents.editingChanged)
        
        firstTextField.text = initialValue
        secondTextField.text = initialValue
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func calculateTotal() {
        if firstTextField.text != "" && secondTextField.text != "" {
            let total = Int((firstTextField.text)!)! + Int((secondTextField.text)!)!
            totalLabel.text = String(total)
        }
    }
}

