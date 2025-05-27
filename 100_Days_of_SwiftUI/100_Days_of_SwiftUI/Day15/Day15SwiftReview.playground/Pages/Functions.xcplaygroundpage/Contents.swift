//: [Previous](@previous)

import Foundation

// create a function example
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// return a value from a func
func rollDice() -> Int {
    Int.random(in: 1...6) // only one line so "return" keyword not necessary
}
