import Cocoa

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

let person = "Jesus"

var playerName = "Roy"
print(playerName)

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"
// Create strings
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Create multiline string
let movie = """
A day in the life of an
Apple engineer
"""

print(actor.count)
let nameLength = actor.count
print(nameLength)

print(result.uppercased())

print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))


// Store whole numbers
let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter += 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))


// Store decimals
let numberDecimal = 0.1 + 0.2
print(numberDecimal)


let aDec = 0.1
let bDec = 0.2
let cDec = aDec + bDec
print(cDec)

let a = 1
let b = 2.0
let c = Double(a) + b

var rating = 5.0
rating += 2
print(rating)
 
