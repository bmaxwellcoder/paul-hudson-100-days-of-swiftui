//: [Previous](@previous)

import Foundation

/*
 When calling a function that might throw errors, we can use try? to convert its result into an optional containing a value on success, or nil otherwise.
 */

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

/*
 The getUser() function will always throw networkFailed, but we don’t care what was thrown – all we care about is whether the call sent back a user or not.
 */
