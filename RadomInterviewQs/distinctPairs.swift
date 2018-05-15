//
//  distinctPairs.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/18/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//Given an integer array and a positive integer k, count all distinct pairs with difference equal to k.
// Example:
//let arr = [0, 1, 2, 2, 4, 6, 7, 9]
//let sum = 8
// == [6, 7, 2, 1]
// ->2(pairs)

import Foundation

func distinctPair(_ arr: [Int], _ sum: Int)->Int{
    var arr = arr
    arr.sort()
    var headIndex = 0
    let middleIndex = arr.count / 2
    var tailIndex = arr.count - 1
    var set = Set<Int>()
    var counter = 0
    while headIndex < middleIndex {
        counter += 1
        print("Hit:", headIndex, middleIndex)
        if arr[headIndex] + arr[tailIndex] == sum {
            set.insert(arr[headIndex])
            set.insert(arr[tailIndex])
        }
        if arr[headIndex] + arr[tailIndex] > sum {
            tailIndex -= 1
        } else {
            headIndex += 1
        }
    }
    print(set, "counter:", counter)
    return set.count/2
}
