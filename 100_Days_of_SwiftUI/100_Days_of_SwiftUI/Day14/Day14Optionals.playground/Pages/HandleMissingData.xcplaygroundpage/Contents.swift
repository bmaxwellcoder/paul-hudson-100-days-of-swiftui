//: [Previous](@previous)

import Foundation

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] { // Unwrapping an optional
    print("Mario's opposite is \(marioOpposite)")
} else { // can add else if desiredd
    print("The optional was empty.")
}

/*
 if let syntax example:
 1) It reads the optional value from the dictionary.
 2) If the optional has a string inside, it gets unwrapped – that means the string inside gets placed into the marioOpposite constant.
 3) The condition has succeeded – we were able to unwrap the optional – so the condition’s body is run.
 */


 func square(number: Int) -> Int {
     number * number
 }

var number: Int? = nil

/*
 code does not work because optional must be unwrapped
 print(square(number: number))
 */

/*
 valid code:
 if let unwrappedNumber = number {
     print(square(number: unwrappedNumber))
 }
 */

// more common syntax:
// shadowing used to create second constant of same name available only inside the condition's body
if let number = number {
    print(square(number: number))
}

// Can also write:
if let number {
    print(square(number: number))
}
