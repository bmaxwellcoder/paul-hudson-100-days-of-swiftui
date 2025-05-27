//: [Previous](@previous)

import Foundation

// Structs let us create our own custom data types, complete with their own properties and methods:
struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }
}

//  Swift lets us treat our struct like a function, passing in parameters for each of its properties. It silently generates this memberwise initializer based on the struct’s properties.

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

// If you want to have a struct’s method change one of its properties, mark it as mutating:
mutating func removeFromSale() {
    isReleased = false
}
