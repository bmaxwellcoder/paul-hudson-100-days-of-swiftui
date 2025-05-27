import Cocoa

/* Function */
func greetUser() {
    print("Hi there!")
}

greetUser()
// var greetCopy = greetUser // take a copy of the function
var greetCopy: () -> Void = greetUser // explicit type form
greetCopy()


// closure syntax example
// (1) create closure that acce[ts parameters:
let sayHello = {(name: String) -> String in
    "Hi \(name)!"
}
print(sayHello("Bryan"))


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData // explicit form
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
// (2) pass functions into other functions:
//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

// Combine (1) and (2)
// explicit closure:
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    
//    return name1 < name2
//})

// shorthand closure syntax
//let captainFirstTeam = team.sorted { name1, name2 in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}

// shorter shorthand syntax
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}
print(captainFirstTeam)

// another shorthand
// Use of sorted
let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

// Use of filter
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let upperCaseTeam = team.map { $0.uppercased() }
print(upperCaseTeam)

let learnSwift = {
    print("Closures are like functions")
}
//learnSwift()

/* Accept Functions as parameters */
// a function that generates an array of integers by repeating a function a certain number of times
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}
    /*
     1) The function is called makeArray(). It takes two parameters, one of which is the number of integers we want, and also returns an array of integers.
     2) The second parameter is a function. This accepts no parameters itself, but will return one integer every time it’s called.
     3) Inside makeArray() we create a new empty array of integers, then loop as many times as requested.
     4) Each time the loop goes around we call the generator function that was passed in as a parameter. This will return one new integer, so we put that into the numbers array.
     5) Finally the finished array is returned.
     */

//  make arbitrary-sized integer arrays, passing in a function that should be used to generate each number:
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

// same functionality works with dedicated functions too, so we could write something like this:
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// a function that accepts multiple function parameters, each of which accept no parameters and return nothing:
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}





