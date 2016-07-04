//
//  ViewController.swift
//  Got Prime
//
//  Created by Jeffrey Eng on 7/3/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearButtonPressed(sender: AnyObject) {
        numberTextField.text = ""
        resultLabel.text = ""
    }
    
    @IBAction func checkIfPrimeButton(sender: AnyObject) {
        
        if let numberConvertedFromTextField: Int = Int(numberTextField.text!) {
        
            func isPrime(number: Int) -> Bool {
                if number <= 1 {
                    return false
                }
                if number <= 3 {
                    return true
                }
            
                var i = 2
            
                while i*i <= number {
                    if number % i == 0 {
                        return false
                    }
                
                    i = i + 1
                }
            
                return true
            }
        
            isPrime(numberConvertedFromTextField)
        
            if isPrime(numberConvertedFromTextField) == true {
                resultLabel.text = "\(numberConvertedFromTextField) is a prime number!"
            } else {
            resultLabel.text = "\(numberConvertedFromTextField) is not a prime number."
            }
        
        } else {
            let alertController = UIAlertController(title: "Alert", message: "Hey! You didn't enter a number!!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
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

