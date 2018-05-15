//
//  RangeAddition.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/18/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//Given an m * n matrix M initialized with all 0's and several update operations.
//
//Operations are represented by a 2D array, and each operation is represented by an array with two positive integers a and b, which means M[i][j] should be added by one for all 0 <= i < a and 0 <= j < b.
//
//You need to count and return the number of maximum integers in the matrix after performing all the operations.
//
//Example 1:
//Input:
//m = 3, n = 3
//operations = [[2,2],[3,3]]
//Output: 4
//Explanation:
//Initially, M =
//[[0, 0, 0],
//[0, 0, 0],
//[0, 0, 0]]
//
//After performing [2,2], M =
//[[1, 1, 0],
//[1, 1, 0],
//[0, 0, 0]]
//
//After performing [3,3], M =
//[[2, 2, 1],
//[2, 2, 1],
//[1, 1, 1]]
//
//So the maximum integer in M is 2, and there are four of it in M. So return 4.


func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
    
    var minX = m
    var minY = n
    print("OPS:", ops)
    print("minX:", minX, "minY:", minY)
    print("-----------------\n")
    for op in ops {
        print("minX:", minX, "minY:", minY)
        print("-----------------")
        minX = min(op[0], minX)
        minY = min(op[1], minY)
        print("minX:", minX, "minY:", minY)
        print("Ops[0]", op[0])
        print("Ops[1]", op[1])
        print("")
    }
    return minX * minY
}

import Foundation

