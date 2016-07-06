//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jeffrey Eng on 7/6/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var costTextField: UITextField!

    @IBOutlet weak var finalCostLabel: UILabel!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    
    @IBAction func tipSliderChanged(sender: UISlider) {
        self.costTextField.text = "\(sender.value)"
    }
    
    @IBAction func costTextFieldChanged(sender: UITextField) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.costTextField.text = "Yay! We're finally writing code!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

