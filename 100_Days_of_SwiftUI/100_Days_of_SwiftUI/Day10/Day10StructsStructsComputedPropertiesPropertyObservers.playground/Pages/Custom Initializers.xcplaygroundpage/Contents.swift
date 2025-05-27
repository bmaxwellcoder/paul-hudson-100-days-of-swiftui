
import Foundation

struct Player {
    let name: String
    let number: Int
    
    init(theName: String) {
        self.name = theName
        number = Int.random(in: 1...99)
    }
}

let player = Player(theName: "Megan R")
print(player.number)
/*
 1) There is no func keyword. Yes, this looks like a function in terms of its syntax, but Swift treats initializers specially.
 2) Even though this creates a new Player instance, initializers never explicitly have a return type – they always return the type of data they belong to.
 3) I’ve used self to assign parameters to properties to clarify we mean “assign the name parameter to my name property”.

 */

struct User {
    var username: String
}

extension User {
    init() {
        username = "Anonymous"
    }
}

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()
