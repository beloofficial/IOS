//
//  FirstViewController.swift
//  Back to the Future
//
//  Created by Belo on 3/19/19.
//  Copyright © 2019 Амантай. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let year = Utilities().getCurrentYear()
        
        label1.text = Utilities().getLetterAtIndex(str: year, i: 0)
        label2.text = Utilities().getLetterAtIndex(str: year, i: 1)
        label3.text = Utilities().getLetterAtIndex(str: year, i: 2)
        label4.text = Utilities().getLetterAtIndex(str: year, i: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
    }
    
    @objc func Tick(){
        timeLabel.text = Utilities().getCurrentTime()
    }
    
    
}

