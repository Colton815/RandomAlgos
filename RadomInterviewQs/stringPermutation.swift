//
//  stringPermutation.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/30/18.
//  Copyright © 2018 Stone. All rights reserved.
//


// returns an array of string permutations
// "ABC" -> ["ABC", "BAC", "CAB", "ACB", "BCA", "CBA"]

// how to call it:
// var charArr = Array("ABC")
// print(stringPermutation(charArr.count, &charArr))


import Foundation

func stringPermutation(_ length: Int, _ charArr: inout Array<Character>)->[String]{
    var perms = [[Character]]()
    
    func getPermutation(_ length: Int, _ charArr: inout Array<Character>){
        
        if length == 1 {
            perms.append(charArr)
            return
        }
        
        for index in 0..<length - 1{
            getPermutation(length-1, &charArr)
            charArr.swapAt(length-1, (length%2 == 1) ? 0:index)
        }
        getPermutation(length-1, &charArr)
    }
    
    getPermutation(length, &charArr)
    
    return perms.map{ String($0) }
}
