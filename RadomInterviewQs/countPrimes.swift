//
//  countPrimes.swift
//  RadomInterviewQs
//
//  Created by Colton Walker on 4/17/18.
//  Copyright © 2018 Stone. All rights reserved.
//
//Count the number of prime numbers less than a non-negative number, n.

//Input: 7
//Output: 4
//

import Foundation

func countPrimes(_ n: Int) -> Int {
    var primeNumbs = [Int]()
    
    for num in stride(from: 3, to: n+1, by: 1){
        if isPrime(num) {
            print("num", num)
            primeNumbs.append(num)
        }
    }
    
    return primeNumbs.count
}

private func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
