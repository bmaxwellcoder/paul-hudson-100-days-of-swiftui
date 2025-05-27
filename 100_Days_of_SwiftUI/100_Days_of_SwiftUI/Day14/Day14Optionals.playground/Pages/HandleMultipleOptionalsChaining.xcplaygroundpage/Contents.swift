//: [Previous](@previous)

import Foundation

let names = ["Arya", "Bran", "Robb", "Sansa"]

// Optional chaining allows us to say “if the optional has a value inside, unwrap it then…”
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
