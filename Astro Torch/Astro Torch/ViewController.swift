//
//  ViewController.swift
//  Astro Torch
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
    

    @IBOutlet weak var myButton: UIButton!
    
    var changeColor = false
    @IBAction func clickMyButton(_ sender: UIButton) {
        if( changeColor)
        {
            self.view.backgroundColor = UIColor.red;
            changeColor = false
        }
        else{
            self.view.backgroundColor = UIColor.blue;
            changeColor = true
        }
    }
}

