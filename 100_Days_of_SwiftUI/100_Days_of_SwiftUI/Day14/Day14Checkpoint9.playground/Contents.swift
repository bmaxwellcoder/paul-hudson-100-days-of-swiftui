import Cocoa

// Solution
/*
 func getNumber(in array: [Int]?) -> Int {
     array?.randomElement() ?? random
 }
 */

// A step further
func getNumber(in array: [Int?]?) -> Int {
    lazy var random = Int.random(in: 1...100) // use lazy to calculate random only if needed
    return (array?.randomElement() ?? random) ?? random
}

let result = getNumber(in: [])
print(result)
