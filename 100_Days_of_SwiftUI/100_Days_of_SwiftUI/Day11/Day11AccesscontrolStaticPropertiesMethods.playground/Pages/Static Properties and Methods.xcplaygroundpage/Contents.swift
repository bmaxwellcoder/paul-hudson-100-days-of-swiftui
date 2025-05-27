//: [Previous](@previous)

import Foundation

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}


School.add(student: "Taylor Swift")
print(School.studentCount)

/*
  If you want to mix and match static and non-static properties and methods, there are two rules:

 1) To access non-static code from static code… you’re out of luck: static properties and methods can’t refer to non-static properties and methods because it just doesn’t make sense – which instance of School would you be referring to?
 2) To access static code from non-static code, always use your type’s name such as School.studentCount. You can also use Self to refer to the current type.
 */

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
