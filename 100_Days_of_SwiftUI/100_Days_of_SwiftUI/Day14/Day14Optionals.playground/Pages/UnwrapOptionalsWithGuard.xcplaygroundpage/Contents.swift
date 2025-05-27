//: [Previous](@previous)

import Foundation

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

func example() {
    guard let unwrapped = myVar else {
        print("Run if myVar doesn't have a value inside")
        return
    }
}

/*
 1) If you use guard to check a function’s inputs are valid, Swift will always require you to use return if the check fails.
 2) If the check passes and the optional you’re unwrapping has a value inside, you can use it after the guard code finishes.
 */
