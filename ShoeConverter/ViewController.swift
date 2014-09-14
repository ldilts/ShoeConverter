//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Lucas Michael Dilts on 14/09/2014.
//  Copyright (c) 2014 Lucas Dilts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        /*
        // Constant everytime the button is pressed
        let sizeFromTextField = mensShoeSizeTextField.text
        
        // Convert a String to Integer
        let numberFromTextField = sizeFromTextField.toInt() // Convert to an optional
        var integerFromTextField = numberFromTextField! // convert optional to an Integer
        
        // US to European conversion constant
        let conversionConstant = 30
        
        // Convert US to European
        integerFromTextField += conversionConstant
        
        // Convert an Integer to String
        let stringWithUpdatedShoeSize = "\(integerFromTextField)" + " " + " in European Shoe Size"
        
        // Update Label
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        */
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        mensShoeSizeTextField.resignFirstResponder()
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        // Convert a String to NSString, and then convert the NSString to a double
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        // Conversion Constant
        let conversionConstant = 30.5
        
        // Update UI
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        womensShoeSizeTextField.resignFirstResponder()
    }
    

}

