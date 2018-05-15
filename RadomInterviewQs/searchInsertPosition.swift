//
//  searchInsertPosition.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/26/18.
//  Copyright © 2018 Stone. All rights reserved.
//

//Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You may assume no duplicates in the array.

import Foundation


// [1,3,5,6], 5 => 2
// [1,3,5,6], 2 => 1
// [1,3,5,6], 7 => 4
// [1,3,5,6], 0 => 0

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var nums = nums
    nums.append(target)
    nums.sort()
    
    return nums.index(of: target)!
}
