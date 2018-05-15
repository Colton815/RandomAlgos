//
//  parse.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 5/15/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation


// input and output
// "applepie", ["apple", "pie"] -> "apple pie"
//["ppl", "pie", "app", "ple", "appl", "apple"]


// length: checks the length of 2 strings
// value1: evaluate length
//value2: evaluate length
//Return: true if value1 is less than string2 else returns false
func length(value1: String, value2: String) -> Bool {
    return value1.count < value2.count
}

// match: checks if the combination of two strings match a griven string
// inputWord: primary word
// string1: one of two possible sub strings
// string2: one of two possible sub strings
// Returns: Strings as one string if combination is found else returns nil
func match(_ inputWord: String, _ string1: String, _ string2: String)->String?{
    if string1 + string2 == inputWord {
        return string1 + " " + string2
    }
    if string2 + string1 == inputWord {
        return string2 + " " + string1
    }
    return nil
}

// parse: checks if any combination in a set of sub strings matches a given string
// input: primary word
// words: set of strings to check against input
// Returns: Strings as one string if combination is found else returns nil
func parse(_ input: String, words: Set<String>) -> String?{
    let input = input.lowercased()
    
    // extract and lowercase words that are subStrings of the input
    var sortedArr = [String]()
    for word in words {
        let word = word.lowercased()
        if input.contains(word) {
            sortedArr.append(word)
        }
    }
    
    // order the newArray by word count
    sortedArr.sort(by: length)
    
    var head = 0
    var tail = sortedArr.count - 1
    let inputCount = input.count
    print(sortedArr)
    
    while head <= tail {
        print(sortedArr[head], sortedArr[tail])
        if sortedArr[head].count + sortedArr[tail].count == inputCount {
            // if substring combined make up input, return the substrings
            if let wordMatched = match(input, sortedArr[head], sortedArr[tail]){
                return wordMatched
            }
            // if head next index has the same word count move head index
            if sortedArr[head].count == sortedArr[head+1].count {
                head += 1
            } else if sortedArr[tail].count == sortedArr[tail-1].count{
                // if tail next index has the same word count move tail index and set head to 0
                tail -= 1
                head = 0
            }
        } else if sortedArr[head].count + sortedArr[tail].count < inputCount {
            head += 1
        } else {
            tail -= 1
        }
    }
    return nil
}
