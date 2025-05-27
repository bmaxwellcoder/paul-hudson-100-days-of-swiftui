import Cocoa

// loop through 1 through 100, and for each number:
// - If a mutliple of 3, print "Fizz"
// - If a mutliple of 5, print "Buzz"
// - If a mutliple of 3 and 5, print "FizzBuzz"
// - Otherwise, just print the number

//for i in 1...100 {
//    if i % 3 == 0 && i % 5 == 0 {
//        print("FizzBuzz")
//    } else if i % 3 == 0 {
//        print("Fizz")
//    } else if i % 5 == 0 {
//        print("Buzz")
//    } else {
//        print(i)
//    }
//}

//for i in 1...25 {
//    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
//        print("FizzBuzz")
//    } else if i.isMultiple(of: 3) {
//        print("Fizz")
//    } else if i.isMultiple(of: 5) {
//        print("Buzz")
//    } else {
//        print(i)
//    }
//}


// Improved
for i in 1...100 {
    if i.isMultiple(of: 3) { // optimizes by not doing a multiple of 3 check twice
        if i.isMultiple(of: 5) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}

print()

