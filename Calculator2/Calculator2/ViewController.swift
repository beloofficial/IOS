//
//  ViewController.swift
//  Calculator2
//
//  Created by Belo on 3/18/19.
//  Copyright © 2019 Амантай. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentOperation : Operator = Operator.nothing
    var calcState : Calculation = Calculation.enteringNum
    
    @IBOutlet weak var showPressed: UILabel!
    var firstValue = ""
    var secondVlaue = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func NumberClicked(_ sender: UIButton) {
        
        updateDisplay(number: String(sender.tag))
    }
    func updateDisplay(number: String){
        showPressed.text = "Number " + number + " PRESSED"
        if calcState == Calculation.newNumStarted{
            if let num = resultLabel.text{
                if num != ""{
                    firstValue = num
                }
            }
            calcState = Calculation.enteringNum
            resultLabel.text = number
        }
        else if calcState == Calculation.enteringNum{
            resultLabel.text = resultLabel.text! + number
        }
    }
    
    @IBAction func operatorClicked(_ sender: UIButton) {
        calcState = Calculation.newNumStarted
        if let num = resultLabel.text{
            if num != ""{
                firstValue = num
                resultLabel.text = ""
            }
        }
        switch sender.tag {
        case 10:
            currentOperation = Operator.add
            showPressed.text = "+ PRESSED"
            
        case 11:
            currentOperation = Operator.subtract
            showPressed.text = "- PRESSED"
        case 12:
            currentOperation = Operator.times
            showPressed.text = "* PRESSED"
        case 13:
            currentOperation = Operator.divide
            showPressed.text = "/ PRESSED"
        default:
            return
        }
    }
    
    @IBAction func equalsClicked(_ sender: UIButton) {
        showPressed.text = "= PRESSED"
        if( firstValue.isEmpty){
            return
        }
        if(resultLabel.text == ""){
            return
        }
        var result = ""
        
        if currentOperation == Operator.times{
            result = "\(Double(firstValue)! * Double(resultLabel.text!)!)"
        }
        else if currentOperation == Operator.divide{
            result = "\(Double(firstValue)! / Double(resultLabel.text!)!)"
        }
        else if currentOperation == Operator.add{
            result = "\(Double(firstValue)! + Double(resultLabel.text!)!)"
        }
        else if currentOperation == Operator.subtract{
            result = "\(Double(firstValue)! - Double(resultLabel.text!)!)"
        }
        resultLabel.text = result;
        calcState = Calculation.newNumStarted
        print("DEBUG" + result)
    }
    
}

