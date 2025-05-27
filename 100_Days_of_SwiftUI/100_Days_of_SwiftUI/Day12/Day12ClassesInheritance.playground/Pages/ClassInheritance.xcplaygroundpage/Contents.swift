//: [Previous](@previous)

import Foundation

// Parent class
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }

}

// Subclass
final class Developer: Employee { // cannot be inherited from since marked final
    func work() { // hours property shared
        print("I'm writing code for \(hours) hours.")
    }
    
    /*
     Override Rules:
     1) If you attempt to change a method without using override, Swift will refuse to build your code. This stops you accidentally overriding a method.
     2) If you use override but your method doesn’t actually override something from the parent class, Swift will refuse to build your code because you probably made a mistake.
     */
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

// Subclass
final class Manager: Employee { // cannont be inherited from since marked final
    func work() { // hours propety shared
        print("I'm going to meetings for \(hours) hours.")
    }
}

// Class instances
let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8) // Mehtod inherited from Employee
novall.printSummary()
