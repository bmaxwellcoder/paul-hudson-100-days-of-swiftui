
import Cocoa

// Check mulltiple conditions
let age = 16

if age >= 16 {
    print("You can vote in the next election")
} else {
    print("Sorry, you're too young to vote")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent == true {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicylcle, car, escooter
}

let transcport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooteer now!") 
}
