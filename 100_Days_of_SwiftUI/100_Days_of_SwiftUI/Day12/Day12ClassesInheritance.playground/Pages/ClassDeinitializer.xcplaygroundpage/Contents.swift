//: [Previous](@previous)

import Foundation

/*
 Deinitializer rules:
 1) Just like initializers, you don’t use func with deinitializers – they are special.
 2) Deinitializers can never take parameters or return data, and as a result aren’t even written with parentheses.
 3) Your deinitializer will automatically be called when the final copy of a class instance is destroyed. That might mean it was created inside a function that is now finishing, for example.
 4) We never call deinitializers directly; they are handled automatically by the system.
 5) Structs don’t have deinitializers, because you can’t copy them.
 */


class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

// Recall: deinitializer is only called when the last remaining reference to a class instance is destroyed. This might be a variable or constant you have stashed away, or perhaps you stored something in an array
var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()  // only destroyed when array is cleared
print("Array is clear!")

