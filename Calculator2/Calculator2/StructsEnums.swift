//
//  StructsEnums.swift
//  Calculator2
//
//  Created by Belo on 3/18/19.
//  Copyright © 2019 Амантай. All rights reserved.
//

import Foundation

enum Operator : String {
    case add = "+"
    case subtract = "-"
    case times = "*"
    case divide = "/"
    case nothing = ""
}

enum Calculation : String{
    case enteringNum = "enteringNum"
    case newNumStarted = "newNumStarted"
}
