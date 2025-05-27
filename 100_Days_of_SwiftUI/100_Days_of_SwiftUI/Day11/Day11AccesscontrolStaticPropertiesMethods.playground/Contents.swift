import Cocoa

struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

// should not allow: account.funds -= 1000

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


/*
 1) Use private for “don’t let anything outside the struct use this.”
 2) Use fileprivate for “don’t let anything outside the current file use this.”
 3) Use public for “let anyone, anywhere use this.”
 4) private(set): means “let anyone read this property, but only let my methods write it.”
 */
