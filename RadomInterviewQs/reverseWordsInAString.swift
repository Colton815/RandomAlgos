//
//  reverseWordsInAString.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/18/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//Reverse Words in a String III
//
//Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
//
//Example 1:
//Input: "Let's take LeetCode contest"
//Output: "s'teL ekat edoCteeL tsetnoc"

import Foundation

func reverseWords(_ s: String) -> String {
    var stringArr = s.components(separatedBy: " ")
    stringArr = stringArr.map{ reverseSingleWord($0)}
    
    return stringArr.joined(separator: " ")
}

private func reverseSingleWord(_ word: String)->String{
    var newString = ""
    
    for char in word{
        newString = "\(char)" + newString
    }
    
    return newString
}
