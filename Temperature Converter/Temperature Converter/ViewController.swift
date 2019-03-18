//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Belo on 3/18/19.
//  Copyright © 2019 Амантай. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var tempEntry: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var numOfConversion = 0
    
    @IBOutlet weak var ConversionsLabel: UILabel!
    @IBAction func convertClicked(_ sender: UIButton) {
        //print(123);
        if let result = tempEntry.text{
            if result == ""{
                return
            }

            if let num = Double(result){
                let output = num * (9/5) + 32
                resultLabel.text = String(output)
                
                numOfConversion+=1
                ConversionsLabel.text = String(numOfConversion) + " Conversions";
            }
        }
        
    }
}

