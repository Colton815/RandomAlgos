//
//  getPermutation.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/18/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation

func permute(list: [String], minStringLen: Int = 2) -> Set<String> {
    func permute(fromList: [String], toList: [String], minStringLen: Int, set: inout Set<String>) {
        if toList.count >= minStringLen {
            set.insert(toList.joined(separator: ""))
        }
        if !fromList.isEmpty {
            for (index, item) in fromList.enumerated() {
                var newFrom = fromList
                newFrom.remove(at: index)
                permute(fromList: newFrom, toList: toList + [item], minStringLen: minStringLen, set: &set)
            }
        }
    }
    
    var set = Set<String>()
    permute(fromList: list, toList:[], minStringLen: minStringLen, set: &set)
    return set
}
