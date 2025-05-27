//: [Previous](@previous)

import Foundation

// loop over an array from collection
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}

// loop over a range of numbers
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// exclude the final number
for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

// remove the loop varaible
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

// a while loop executes body until a loop body is false
while count > 0 {
    print("\(count)…")
    count -= 1
}

print("Go!")

// continue skips a loop iteration and proceeds to the following one
et files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(file)")
}


// P.S.: can use break to exit a loop and skip all remaining iterations
