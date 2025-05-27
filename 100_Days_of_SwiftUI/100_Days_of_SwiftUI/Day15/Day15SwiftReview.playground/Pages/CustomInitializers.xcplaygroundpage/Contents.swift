//: [Previous](@previous)

import Foundation

// Initializers are special functions that prepare a new struct instance to be used, ensuring all properties have an initial value.

// Swift generates one based on the struct’s properties, but you can create your own:


struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
