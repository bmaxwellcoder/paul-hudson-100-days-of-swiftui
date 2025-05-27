import Cocoa

// Simple atruct
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

// Assign values to struct Albums
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

// Values inside struct that can change
struct Employee {
    let name: String // can declare a default value but can't pass in to instance b/c of "let"
    var vacationRemaining: Int // can declare a default value

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

// Note: cannot call a mutating function on a constant, ie can't say "let archer", then archer.takeVacation
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer0 = Employee.init(name: "Sterling Archer", vacationRemaining: 14) // syntatic sugar, no init call required
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

/*
 1) Variables and constants that belong to structs are called properties.
 2) Functions that belong to structs are called methods.
 3) When we create a constant or variable out of a struct, we call that an instance – you might create a dozen unique instances of the Album struct, for example.
 4) When we create instances of structs we do so using an initializer like this: Album(title: "Wings", artist: "BTS", year: 2016).
 */
  

