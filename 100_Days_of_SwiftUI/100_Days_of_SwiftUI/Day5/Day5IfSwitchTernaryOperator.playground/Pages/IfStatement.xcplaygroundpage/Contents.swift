import Cocoa


let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 80
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName { // if ourName comes first alphabetically
    print("It's \(ourName) vs \(ourName)")
}

if ourName > friendName { // if ourName comes after alphabetically
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

if country == "Austrailia" {
    print("G' day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}


var username = ""

if username == "" { // or use username.isEmpty which is better
    username = "Anonymous"
}

print("Welcome \(username)")
