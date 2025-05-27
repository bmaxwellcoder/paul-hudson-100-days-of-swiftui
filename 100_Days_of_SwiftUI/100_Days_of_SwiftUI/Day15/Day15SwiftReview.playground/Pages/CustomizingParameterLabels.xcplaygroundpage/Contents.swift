//: [Previous](@previous)

import Foundation

// If you don’t want to pass a parameter’s name when calling a function, place an underscore before it:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

// An alternative is to write a second name before the first: one to use externally, and one internally:
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
