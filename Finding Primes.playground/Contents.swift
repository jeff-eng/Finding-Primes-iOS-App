//: Playground - noun: a place where people can play

import UIKit

func isPrime(n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    
    var i = 2
    while i*i <= n {
        //if there is no remainder, then n is not prime
        if n % i == 0 {
            return false
        }
        i = i + 1
    }
    
    return true
}

isPrime(11)