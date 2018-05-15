//
//  russianDollEnvelopes.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/17/18.
//  Copyright © 2018 Stone. All rights reserved.
//

//You have a number of envelopes with widths and heights given as a pair of integers (w, h). One envelope can fit into another if and only if both the width and height of one envelope is greater than the width and height of the other envelope.
//
//What is the maximum number of envelopes can you Russian doll? (put one inside other)
//
//Example:
//Given envelopes = [[5,4],[6,4],[6,7],[2,3]], the maximum number of envelopes you can Russian doll is 3 ([2,3] => [5,4] => [6,7]).

import Foundation

func maxEnvelopes(_ envelopes: [[Int]]) -> Int {
    var envelopes = envelopes
    guard envelopes.count > 1 else { return envelopes.count }
    
    var isSwapped = false
    
    repeat {
        isSwapped = false
        
        for index in 1..<envelopes.count{
            print("Envelopes", envelopes)
            print([envelopes[index], envelopes[index-1]], isLesser([envelopes[index], envelopes[index-1]]))
            if isLesser([envelopes[index], envelopes[index-1]]){
                print("swaping")
                envelopes.swapAt(index, index-1)
                isSwapped = true
            }
        }
    } while isSwapped
    
    print("Envelopes", envelopes)
    return checkArr(envelopes)
}
//[[3, 4], [12, 2]]
func removeLesser(_ arr1:[Int], _ arr2:[Int]){
    
    if arr1[0] < arr2[0] && arr1[1] > arr2[1]{
        print("arr1", arr1)
    }
}

private func isLesser(_ arrArr: [[Int]])->Bool{
    guard arrArr.count == 2 else {return false}
    
    for index in 0..<arrArr.count-1{
        if arrArr[index][0] <= arrArr[index+1][0] && arrArr[index][1] <= arrArr[index+1][1]{
            return true
        } else {
            return false
        }
    }
    return false
}

private func checkArr(_ arrArr:[[Int]])->Int{
    var arrArr = arrArr
    var count = 0
    for index in 0..<arrArr.count-1{
        if arrArr[index][0] == arrArr[index+1][0] && arrArr[index][1] == arrArr[index+1][1]{
            count += 1
            continue
        }
        if arrArr[index][0] == arrArr[index+1][0] || arrArr[index][1] == arrArr[index+1][1]{
            arrArr = arrArr.filter{ $0 != arrArr[index+1] }
            break
        }
    }
    
    return arrArr.count - count
}
