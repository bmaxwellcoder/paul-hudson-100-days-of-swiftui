//: [Previous](@previous)

import Foundation

func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

// conform to a common Swift protocol called Equatable, which means “can be compared for equality.”
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

/*
 Equatables allow information to be hidden but not from the Swift compiler. The Swift compiler understnads the actual data type being returned and will check it
 */

/*???
 returning Vehicle means "any sort of Vehicle type but we don't know what", whereas returning some Vehicle means "a specific sort of Vehicle type but we don't want to say which one.”
 */
