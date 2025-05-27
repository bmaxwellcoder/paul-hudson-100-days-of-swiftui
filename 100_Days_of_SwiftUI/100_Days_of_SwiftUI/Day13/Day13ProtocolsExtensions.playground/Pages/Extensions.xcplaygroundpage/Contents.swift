//: [Previous](@previous)

import Foundation

/*
 Extensions let us add functionality to any type, whether we created it or someone else created it – even one of Apple’s own types.
 */

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() -> String { // ??? inconsistent with code provided
        self = self.trimmed()
        return self
    }
    
    var lines: [String] { // adding string computed property
        self.components(separatedBy: .newlines)
    }
}

/*
 1) We start with the extension keyword, which tells Swift we want to add functionality to an existing type.
 2) Which type? Well, that comes next: we want to add functionality to String.
 3) Now we open a brace, and all the code until the final closing brace is there to be added to strings.
 4) We’re adding a new method called trimmed(), which returns a new string.
 5) Inside there we call the same method as before: trimmingCharacters(in:), sending back its result.
 6) Notice how we can use self here – that automatically refers to the current string. This is possible because we’re currently in a string extension.
 */

let trimmed2 = quote.trimmed()
print(trimmed2)
print(quote.trim())

/*
 Extension benefits:
 1) When you type quote. Xcode brings up a list of methods on the string, including all the ones we add in extensions. This makes our extra functionality easy to find.
 2) Writing global functions makes your code rather messy – they are hard to organize and hard to keep track of. On the other hand, extensions are naturally grouped by the data type they are extending.
 3) Because your extension methods are a full part of the original type, they get full access to the type’s internal data. That means they can use properties and methods marked with private access control, for example.
 */

// Use exention to keep memberwise initializer and add custom
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

// Use Extension to add computed property
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)
