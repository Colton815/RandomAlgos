//
//  missingNumber.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/20/18.
//  Copyright © 2018 Stone. All rights reserved.
//

// 268. Missing Number

//Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
//
//Example 1:
//
//Input: [3,0,1]
//Output: 2
//Example 2:
//
//Input: [9,6,4,2,3,5,7,0,1]
//Output: 8


import Foundation


func missingNumber(_ nums: [Int]) -> Int {
    let nums = nums.sorted()
    var counter = 0
    
    for num in nums{
        if num != counter{
            return counter
        }
        counter += 1
    }
    return counter
}
