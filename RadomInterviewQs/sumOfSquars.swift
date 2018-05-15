//
//  sumOfSquars.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/26/18.
//  Copyright © 2018 Stone. All rights reserved.
//

//Given a non-negative integer c, your task is to decide whether there're two integers a and b such that a2 + b2 = c.
//
//Example 1:
//Input: 5
//Output: True
//Explanation: 1 * 1 + 2 * 2 = 5
//Example 2:
//Input: 3
//Output: False

import Foundation

func judgeSquareSum(_ c: Int) -> Bool {
    
    var minVal = 0
    var maxVal = Int(sqrt(Double(c)))
    
    while minVal <= maxVal {
        let sum = minVal * minVal + maxVal * maxVal
        if sum == c {
            return true
        }
        if sum < c {
            minVal += 1
        }
        if sum > c {
            maxVal -= 1
        }
    }
    return false
}
