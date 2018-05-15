//
//  reverseString.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/11/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation


func reverseString(_ s: String) -> String {
    guard s.count > 1 else { return s }
    let stringArr = s.compactMap{ $0 }
    var reversedWord = ""
    
    (0...s.count - 1).reversed().forEach {
        reversedWord.append(stringArr[$0])
    }
    
    return reversedWord
}
