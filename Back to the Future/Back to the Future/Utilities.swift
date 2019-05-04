//
//  Utilities.swift
//  Back to the Future
//
//  Created by Belo on 3/19/19.
//  Copyright © 2019 Амантай. All rights reserved.
//

import Foundation


class Utilities{
    
    func getCurrentYear() ->String{
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year,from:date))
    }
    func getLetterAtIndex(str: String, i : Int)->String{
        let index = str.index(str.startIndex,offsetBy: i)
        return String(str[index])
    }
    
    func getCurrentTime()->String{
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
        
    }
    
    
}
