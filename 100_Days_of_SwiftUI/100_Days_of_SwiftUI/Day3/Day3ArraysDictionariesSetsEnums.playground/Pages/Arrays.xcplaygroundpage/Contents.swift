import Cocoa
/*Arrays*/
// Create an array of Strings
var beatles = ["John", "Paul", "George", "Ringo"]
// add to an array
beatles.append("Adrian")

// Create an array of integers
let numbers = [4, 8, 15, 16, 23, 42, 2]
// sort array numbers
print(numbers.sorted())

// Create  an empty array
// Option I
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// Option II
var results = [Int]()
results.append(10)
print(results[0])

//other ways for arrray declaration
var albums = [String]()
albums.append("Folklore")
print(albums[0])
var num = [Int]()
num.append(1)

// Array Methods array
var characters = ["Lana", "Pam", "Ray", "Sterling"]
// Return number of items in array
print(characters.count)

// Remove item at index in array
characters.remove(at: 2)
print(characters.count)

// Remove all items from array
characters.removeAll()
print(characters.count)

// Check if item exists in array
let bondMovies = ["Casino Royal", "Specter", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
// Sort array alphabetically
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
// Reverse items in an array
let reversedPresidents = presidents.reversed()
print(reversedPresidents)




