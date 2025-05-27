//: [Previous](@previous)

import Foundation
// Closure: a chunk of code we can pass around and call whenever we want
// assign functionality directly to a constant or variable like this:
let sayHello = {
    print("Hi there!")
}

sayHello()

// closure with paramters 
let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
