//
//  isSubsequence.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/18/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//Given a string s and a string t, check if s is subsequence of t.
//
//You may assume that there is only lower case English letters in both s and t. t is potentially a very long (length ~= 500,000) string, and s is a short string (<=100).
//
//A subsequence of a string is a new string which is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (ie, "ace" is a subsequence of "abcde" while "aec" is not).
//
//Example 1:
//s = "abc", t = "ahbgdc"
//
//Return true
//
//Example 2:
//s = "axc", t = "ahbgdc"
//
//Return false

import Foundation


func isSubsequence(_ s: String, _ t: String) -> Bool {
    let sLength = s.count-1
    let tLength = t.count-1
    let s = s.map{$0}
    let t = t.map{$0}
    var sPointer = 0
    var tPointer = 0
    var count = 0
    
    while sPointer <= sLength && count <= s.count && sPointer <= tPointer && tPointer <= tLength{
        if s[sPointer] == t[tPointer]{
            print("move pointer1 and pointer2")
            sPointer += 1
            tPointer += 1
            count += 1
            
        } else {
            print("move pointer 2")
            tPointer += 1
            
        }
        
    }
    print(count, s.count)
    if count == s.count {
        return true
    }
    return false
}
