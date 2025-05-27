//: [Previous](@previous)

import Foundation

// Extensions let us add functionality to any type. For example, Swift’s strings have a method for trimming whitespace and new lines, but it’s quite long so we could turn it into an extension:

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmed()

// If you want to change a value directly rather than returning a new value, mark your method as mutating like this:
extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

quote.trim()

// Extensions can also add computed properties to types, like this one:
extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

// We can now use that property with all strings:

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count)
