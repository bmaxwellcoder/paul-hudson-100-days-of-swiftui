import Cocoa

enum RootError: Error {
    case outOfBounds
    case noRoot
}

func findSqrt(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw RootError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
        throw RootError.noRoot
}

let number = -1


do {
    let root = try findSqrt(number)
    print("The square root of \(number) is \(root)")
} catch RootError.outOfBounds {
    print("out of bounds")
} catch RootError.noRoot {
    print("no root")
}

