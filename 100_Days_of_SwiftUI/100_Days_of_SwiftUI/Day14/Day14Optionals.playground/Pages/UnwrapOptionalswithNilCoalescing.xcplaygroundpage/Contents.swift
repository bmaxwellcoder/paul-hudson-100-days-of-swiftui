//: [Previous](@previous)

import Foundation

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//  reads a non-existent key in our captains dictionary, which means new will be an optional string to set to nil
// let new = captains["Serenity"]

//  nil coalescing operator, written ??, we can provide a default value for any optional, like this:
let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

// an optional property
struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

//  creates an integer from a string, where you actually get back an optional Int?
let input = ""
let number = Int(input) ?? 0
print(number)
