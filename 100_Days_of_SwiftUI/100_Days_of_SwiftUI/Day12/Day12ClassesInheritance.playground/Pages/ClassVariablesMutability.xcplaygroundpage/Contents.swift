//: [Previous](@previous)

import Foundation

class User { // a class with variable properities
    var name = "Paul"
}

let user = User() // Instance of a constance class with variable properties
user.name = "Taylor"
print(user.name)

var user2 = User()
user2.name = "Taylor"
user2 = User() //Assigns user2 to a new user instance
print(user2.name)

/*
 Class instance and property variations:
 1) Constant instance, constant property – a signpost that always points to the same user, who always has the same name.
 2) Constant instance, variable property – a signpost that always points to the same user, but their name can change.
 3) Variable instance, constant property – a signpost that can point to different users, but their names never change.
 4) Variable instance, variable property – a signpost that can point to different users, and those users can also change their names.
 */
