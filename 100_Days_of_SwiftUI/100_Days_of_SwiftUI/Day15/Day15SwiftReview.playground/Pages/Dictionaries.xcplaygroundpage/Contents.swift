//: [Previous](@previous)

import Foundation
// Dictionaries store multiple values using specified keys

let employee = [
    "name": "Taylor",
    "job": "Singer"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
