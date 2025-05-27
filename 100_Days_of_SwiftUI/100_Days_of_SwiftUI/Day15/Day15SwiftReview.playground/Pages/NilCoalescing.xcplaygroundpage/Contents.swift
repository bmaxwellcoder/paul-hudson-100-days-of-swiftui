//: [Previous](@previous)

import Foundation

/*
 a third way of unwrapping optionals, called the nil coalescing operator – it unwraps an optional and provides a default value if the optional was empty:
 */

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

let input = ""
let number = Int(input) ?? 0
print(number)
