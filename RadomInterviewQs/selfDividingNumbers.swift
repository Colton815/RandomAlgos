//
//  selfDividingNumbers.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/16/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//A self-dividing number is a number that is divisible by every digit it contains.
//
//For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
//
//Also, a self-dividing number is not allowed to contain the digit zero.
//
//Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
//Input:
//left = 1, right = 22
//Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
import Foundation

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var array = [Int]()
    
    for num in stride(from: left, to: right+1 , by: 1){
        if isSelfDeviding(num) {
            array.append(num)
        }
    }
    return array
}

private func isSelfDeviding(_ number: Int)->Bool{
    
    let nums = String(number).compactMap{Int(String($0))}
    guard !nums.contains(0) else { return false }
    
    for num in nums{
        if number % num != 0 {
            return false
        }
    }
    return true
}


