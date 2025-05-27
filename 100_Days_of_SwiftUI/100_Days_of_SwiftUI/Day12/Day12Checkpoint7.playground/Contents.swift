import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        assertionFailure("This should never be called")
    }
}

class Dog : Animal {
    override func speak() {
        print("bark!")
    }
    
    init() {
        super.init(legs: 4)
    }
}

final class Corgi : Dog {
    override func speak() {
        print("yap!")
    }
}

final class Poodle : Dog {
    override func speak() {
        print("woof!")
    }
}

class Cat : Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    override func speak() {
        print("meow")
    }
    
}

final class Persian : Cat {
    
    
    override func speak() {
        print("prrr")
    }
}

final class Lion : Cat {
    init() {
        super.init(isTame: false)
    }
    
    override func speak() {
        print("roar!")
    }
}

let dog1 = Corgi()
dog1.speak()

let cat1 = Persian(isTame: true)
