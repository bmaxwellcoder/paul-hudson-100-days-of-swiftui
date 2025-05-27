//: [Previous](@previous)

import Foundation

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // set initialiezer from parent
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
// Note: If a subclass does not have any of its own initializers, it automatically inherits the initializers of its parent class.


