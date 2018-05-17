//
//  checkStudentRecord.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/16/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation


// 551. Student Attendance Record I
// "PPALLL" => false
// "PPALLP" => true

func checkRecord(_ s: String) -> Bool {
    
    if !consecutiveLate(s) && !containsA(s) {
        return true
    }
    
    return false
}

private func consecutiveLate(_ string: String)-> Bool {
    
    let string = string.compactMap { $0 }
    var index = 1
    
    while index + 1 < string.count {
        if string[index - 1] == "L" && string[index] == "L" && string[index + 1] == "L" {
            return true
        }
        index += 1
    }
    return false
}

private func containsA(_ string: String)-> Bool {
    
    var dict = [Character:Int]()
    
    for char in string {
        dict[char] = (dict[char] ?? 0) + 1
    }
    
    if let a = dict["A"], a > 1 {
        return true
    }
    
    return false
}
