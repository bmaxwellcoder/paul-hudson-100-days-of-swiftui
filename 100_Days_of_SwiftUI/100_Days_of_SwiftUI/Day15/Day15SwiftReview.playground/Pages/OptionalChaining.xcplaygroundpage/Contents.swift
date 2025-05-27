//: [Previous](@previous)

import Foundation

// Optional chaining reads optionals inside optionals, like this:

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")

/*
 Example note: Optional chaining is there on line 2: a question mark followed by more code. It allows us to say “if the optional has a value inside, unwrap it then…” and add more code. In our case we’re saying “if we got a random element from the array, uppercase it.”
 */
