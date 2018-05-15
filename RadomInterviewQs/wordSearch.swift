//
//  wordSearch.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/16/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//Given a 2D board and a word, find if the word exists in the grid.
//
//The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.
//
//For example,
//Given board =
//[
//    ['A','B','C','E'],
//    ['S','F','C','S'],
//    ['A','D','E','E']
//]
//word = "ABCCED", -> returns true,
//word = "SEE", -> returns true,
//word = "ABCB", -> returns false.


import Foundation

func exist(_ board: [[Character]], _ word: String) -> Bool {
    
    let word = word.uppercased().sorted()
    var wordDict = [Character:Int]()
    var boardCount = 0
    
    var boardDict = makeDict(board, completion: {
        boardCount = $0
    })
    
    guard word.count <= boardCount else {return false}
    
    word.forEach{
        wordDict[$0] = (wordDict[$0] ?? 0) + 1
    }
    
    for (wordKey, wordVal) in wordDict {
        let existKey = (boardDict[wordKey] != nil)
        if !existKey {
            return false
        }
        
        if let boardLetter = boardDict[wordKey], boardLetter < wordVal {
            return false
        }
    }
    return true
}

private func makeDict(_ arrArr: [[Character]], completion: @escaping (Int)->()) -> [Character:Int]{
    var dict = [Character:Int]()
    
    var flatArray = arrArr.flatMap{ $0 }
    flatArray = flatArray.compactMap{ Character(String($0).uppercased())}
    
    completion(flatArray.count)
    flatArray.forEach{
        dict[$0] = (dict[$0] ?? 0) + 1
    }
    return dict
}
