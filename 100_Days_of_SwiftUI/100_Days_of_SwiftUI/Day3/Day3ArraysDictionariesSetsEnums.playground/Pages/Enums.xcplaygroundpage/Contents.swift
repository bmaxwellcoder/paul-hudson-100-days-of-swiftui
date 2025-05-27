//: [Previous](@previous)

import Foundation

// Enumeration
enum Weekday {
    case monday, tuesday, wednesday,thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
print(day)

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Raw values wiht enums
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)
