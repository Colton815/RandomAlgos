//
//  getFactorial.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/30/18.
//  Copyright © 2018 Stone. All rights reserved.
//

// retruns factoraial on a number

// 4 -> 24

import Foundation


func getFactorial(number: Int)->Int{
    var number = number
    var result = 1
    
    while number != 0 {
        result *= number
        number -= 1
    }
    
    return result
}
