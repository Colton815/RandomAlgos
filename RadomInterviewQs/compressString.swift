//
//  compressString.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/15/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation

// input: ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
// output: 4
// Explanation: ["a", "b", "1","2"].count = 4
// - letters with count < 1 dont append count to character list

var arr: [Character] = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]

func compress(_ chars: inout [Character]) -> Int {
    
    var newList = [Character]()
    var count = 0
    
    for index in 0..<chars.count {
        
        count += 1
        if index + 1 >= chars.count || Array(chars)[index] != Array(chars)[index + 1]{
            
            let char = Array(chars)[index]
            newList.append(Character(String(char)))
            if count > 1 {
                newList += seperateInt(num: count)
            }
            count = 0
        }
    }
    chars = newList
    return newList.count
}

func seperateInt(num:Int)->[Character]{
    return String(num).compactMap{ Character(String($0)) }
}
