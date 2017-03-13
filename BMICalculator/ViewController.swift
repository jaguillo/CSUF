//
//  ViewController.swift
//  BMICalculator
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var bmiResult: UILabel!
    
    
   
    @IBOutlet weak var metrics: UISwitch!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bmiResult.isHidden = true
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    /*func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }*/
    
    /*func textFieldDidEndEditing(_ textField: UITextField) {
        heightTextField.text = textField.text
        weightTextField.text = textField.text
    }*/

    //MARK: Actions
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        bmiResult.isHidden = false
        let height = Double(heightTextField.text!)
        let weight = Double(weightTextField.text!)
        
        if height != nil && weight != nil {
            
            if metrics.isOn{
            
                    let bmi = Double(round(100*(weight!/(height!*height!))/100))
                
                switch bmi {
                case 0..<16.00:
                    bmiResult.text = "\(bmi) Severe Thinness"
                case 16.00...16.99:
                    bmiResult.text = "\(bmi) Moderate Thinness"
                case 17.00...18.49:
                    bmiResult.text = "\(bmi) Mild Thinness"
                case 18.50...24.99:
                    bmiResult.text = "\(bmi) Normal Range"
                case 25.00...29.99:
                    bmiResult.text = "\(bmi) Overweight"
                case 30.00...34.99:
                    bmiResult.text = "\(bmi) Obese Class I (Moderate)"
                case 35.00...39.99:
                    bmiResult.text = "\(bmi) Obese Class II (Severe)"
                default:
                    bmiResult.text = "\(bmi) Obese Class III (Very Severe)"
                }
                
            }
            else{
                let bmi = Double(round(100*(weight!/height!/height!*703)/100))
                
                switch bmi {
                case 0..<16.00:
                    bmiResult.text = "\(bmi) Severe Thinness"
                case 16.00...16.99:
                    bmiResult.text = "\(bmi) Moderate Thinness"
                case 17.00...18.49:
                    bmiResult.text = "\(bmi) Mild Thinness"
                case 18.50...24.99:
                    bmiResult.text = "\(bmi) Normal Range"
                case 25.00...29.99:
                    bmiResult.text = "\(bmi) Overweight"
                case 30.00...34.99:
                    bmiResult.text = "\(bmi) Obese Class I (Moderate)"
                case 35.00...39.99:
                    bmiResult.text = "\(bmi) Obese Class II (Severe)"
                default:
                    bmiResult.text = "\(bmi) Obese Class III (Very Severe)"
                }
            }
            
            
        }
        else {
            bmiResult.text = "Input is required"
        }
        
        
    }

}

