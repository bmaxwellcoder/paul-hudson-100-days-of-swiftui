//: [Previous](@previous)

import Foundation

// Tuples store a fixed number of values of specific types, which is a convenient way to return multiple values from a function
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift") // Tuple
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

let (firstName, _) = getUser() // does not return all values from tuple
print("Name: \(firstName)")
