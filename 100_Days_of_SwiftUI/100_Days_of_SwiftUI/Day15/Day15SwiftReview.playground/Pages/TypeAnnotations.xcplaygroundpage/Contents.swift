//: [Previous](@previous)

import Foundation

var score: Double = 0
let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var user: Dictionary<String, String> = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

// Special syntax for arrays and dictionaries
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]

// Empty collections
var teams: [String] = [String]()
var clues = [String]()


// Values of an enum have the same type as the enum itself, so we could write this:
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

