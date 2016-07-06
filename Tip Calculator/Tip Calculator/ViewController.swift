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
    
    var mealCost: Float?
    var tipPercent: Float = 20.0
    
    func finalCost() -> Float{
        return mealCost! + tipPercent / 100.0 * mealCost!
    }
    
    func updateFinalCostLabel() {
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else {
            self.finalCostLabel.text = ""
        }
    }
    
    @IBAction func tipSliderChanged(sender: UISlider) {
        self.tipPercent = round(sender.value)
        self.tipPercentLabel.text = "\(Int(self.tipPercent))"
        
        updateFinalCostLabel()
    }
    
    @IBAction func costTextFieldChanged(sender: UITextField) {
        self.mealCost = Float(sender.text!)!
        
        updateFinalCostLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

