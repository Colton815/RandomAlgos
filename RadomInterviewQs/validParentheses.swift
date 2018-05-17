//
//  validParentheses.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/17/18.
//  Copyright © 2018 Stone. All rights reserved.
//

// 20. Valid Parentheses

//Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Note that an empty string is also considered valid.
//
//Example 1:
//
//Input: "()"
//Output: true
//Example 2:
//
//Input: "()[]{}"
//Output: true
//Example 3:
//
//Input: "(]"
//Output: false
//Example 4:
//
//Input: "([)]"
//Output: false
//Example 5:
//
//Input: "{[]}"
//Output: true
import Foundation


func isValidParentheses(_ s: String) -> Bool {
    
    var charArr = [Character]()
    
    for bracket in s {
        if bracket == "(" {
            charArr.append(")")
        } else if bracket == "[" {
            charArr.append("]")
        } else if bracket == "{" {
            charArr.append("}")
        } else {
            if charArr.isEmpty || charArr.last != bracket {
                print("CharArr In:", charArr)
                return false
            }
            charArr.removeLast()
        }
    }
    print("CharArr:", charArr)
    return charArr.isEmpty
}
