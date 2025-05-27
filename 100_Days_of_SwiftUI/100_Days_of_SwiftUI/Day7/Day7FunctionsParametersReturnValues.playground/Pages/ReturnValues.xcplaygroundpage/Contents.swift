//: [Previous](@previous)

import Foundation


/* Return a Value from a function*/
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let resultD = rollDice()
print(resultD)


// My code
func areLettersSame(string1: String, string2: String) -> Bool {
    
    if (string1.sorted() == string2.sorted()) {
        return true
    } else {
        return false
    }
}

print(areLettersSame(string1: "hello", string2: "olleh"))


func areLettersIdentical(string1: String, string2: String) -> Bool {
    
    // brute force
//    let first = string1.sorted()
//    let second = string2.sorted()
//    return first == second
    
    string1.sorted() == string2.sorted()  // no need for a return if only one line of code
   
}

print(areLettersIdentical(string1: "hello", string2: "olleh"))

// Function with paramater labels
//func pythagoras(a: Double, b: Double) -> Double {
//   sqrt(a * a + b * b)
//}
//
//let c = pythagoras(a: 3, b: 4)
//print(c)

// function without parameter labels
func pythagoras(_ a: Double, _ b: Double) -> Double {
   sqrt(a * a + b * b)
}

let c = pythagoras(3, 4)
print(c)

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))


// Another example
//func isUppercase(string: String) -> Bool {
//    string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let result = isUppercase(string: string)


// better way
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string) // pass in string w/o type specified


/*Return multiple values from functions -> refer to Tuples*/
