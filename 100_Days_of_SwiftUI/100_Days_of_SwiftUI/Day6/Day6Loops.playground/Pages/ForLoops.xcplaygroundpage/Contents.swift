import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works grea on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
}
    
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
    }

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")

}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

