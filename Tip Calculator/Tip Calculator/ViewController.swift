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
    
    var mealCost: Float = 0.0
    var tipPercent: Float = 20.0
    
    func finalCost() -> Float{
        return mealCost + tipPercent / 100.0 * mealCost
    }
    
    @IBAction func tipSliderChanged(sender: UISlider) {
        self.tipPercent = sender.value
        self.tipPercentLabel.text = "\(self.tipPercent)"
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

