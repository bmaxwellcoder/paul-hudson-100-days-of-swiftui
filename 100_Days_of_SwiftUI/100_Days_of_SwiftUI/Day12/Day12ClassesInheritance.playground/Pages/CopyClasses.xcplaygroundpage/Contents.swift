//: [Previous](@previous)

import Foundation

class User {
    var username = "Anonymous"
    
    func copy() -> User {
            let user = User() // assigns user to new User instance
            user.username = username
            return user
        }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"
print(user1.username)
print(user2.username)
