//
//  Fib.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/9/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation
// O(2n)
func fib(_ num: Int)->Int{
    var result: Int
    if num == 1 || num == 2 {
        result = 1
    } else {
        result = fib(num - 1) + fib(num - 2)
    }
    return result
}

// O(n)
func bottomUpFib(_ num: Int)-> Int{
    if num == 1 || num == 2 {
        return 1
    }
    var dict = [Int: Int]()
    dict[0] = 1
    dict[1] = 1
    
    for each in 2...num{
        dict[each] = dict[each - 1]! + dict[each - 2]!
    }
    return dict[num - 1]!
}
