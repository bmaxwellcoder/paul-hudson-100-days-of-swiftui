//: [Previous](@previous)

import Foundation
// Optionals represent the absence of data
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

/*
 That attempts to read the value attached to the key “Peach”, which doesn’t exist, so this can’t be a regular string. Swift’s solution is called optionals, which means data that might be present or might not.
 */

// Unwrap optional data as it can't be used directly
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}
