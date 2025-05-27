//: [Previous](@previous)

import Foundation


// Using an array
//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}
//
//let user = getUser()
//print("Name: \(user[0]) \(user[1])")


// using a dictionary
//func getUser() -> [String: String] {
//    [
//        "firstName": "Taylor",
//        "lastName": "Swift"
//    ]
//}
//
//let user = getUser()
//print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")

// Using a Tuple
// How our function looks when it returns a tuple

func getUser0() -> (firstName0: String, lastName0: String) {
    (firstName0: "Taylor", lastName0: "Swift")
}

let user0 = getUser0()
let firstName0 = user0.firstName0
let lastName0 = user0.lastName0
print("Name: \(firstName0) \(lastName0)")

// Modified Tuple
func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.0) \(user.1)")


 /*
 1) Our return type is now (firstName: String, lastName: String), which is a tuple containing two strings.
 2) Each string in our tuple has a name. These aren’t in quotes: they are specific names for each item in our tuple, as opposed to the kinds of arbitrary keys we had in dictionaries.
 3) Inside the function we send back a tuple containing all the elements we promised, attached to the names: firstName is being set to “Taylor”, etc.
 4) When we call getUser(), we can read the tuple’s values using the key names: firstName, lastName, etc.
 */

// Pull a tuple apart into individual values

// Option I
func getUser2() -> (firstName2: String, lastName2: String) {
    (firstName2: "Taylor", lastName2: "Swift")
}

let user2 = getUser2()
let firstName2 = user2.firstName2
let lastName2 = user2.lastName2

print("Name: \(firstName2) \(lastName2)")

// Option II
func getUser3() -> (firstName3: String, lastName3: String) {
    (firstName3: "Taylor", lastName3: "Swift")
}



let (firstName3, lastName3) = getUser3()
print("Name: \(firstName3) \(lastName3)")

// Ignore second part of tuple
let (firstName, _) = getUser()
print("Name: \(firstName)")
