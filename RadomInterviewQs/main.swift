//
//  main.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/16/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation


func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    var s1 = Array(s1.lowercased())
    let s2 = s2.lowercased()
    let s1PermsArray = stringPermutation(s1.count, &s1)
    
    for each in s1PermsArray {
        if s2.range(of: each) != nil {
            return true
        }
    }
    return false
}


let s1 = "ab"
let s2 = "eidbaooo"

print(checkInclusion(s1, s2))
