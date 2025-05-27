import Cocoa

//  create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.


var cars = ["Lexus", "Toyota", "Nissan", "Honda", "Honda"]
print(cars.count)
print(cars)

print(Set(cars))

//let names = [String]()
//print("Total names: \(names.count). Total unique names: \(names.count).")

//let names = ["John", "Michael", "Terry", "Graham", "Eric", "Terry"]
//let uniqueNames = Set(names)
//print("Total names: \(names.count). Total unique names: \(uniqueNames.count).")

let names = ["John", "Michael", "Terry", "Graham", "Eric", "Terry"]
var uniqueNames = Set<String>()
print("Adding names \(names[0]) to the set: \(uniqueNames.insert(names[0])).")
print("Adding names \(names[1]) to the set: \(uniqueNames.insert(names[1])).")
print("Adding names \(names[2]) to the set: \(uniqueNames.insert(names[2])).")
print("Adding names \(names[3]) to the set: \(uniqueNames.insert(names[3])).")
print("Adding names \(names[4]) to the set: \(uniqueNames.insert(names[4])).")
print("Adding names \(names[5]) to the set: \(uniqueNames.insert(names[5])).")
