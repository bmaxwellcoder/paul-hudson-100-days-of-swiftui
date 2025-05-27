import Cocoa
// Create a dictionary
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Assign defulat value
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric" : false,
    "Maeve" : true,
    "Otis" : false,
    ]
hasGraduated["John"] // returns a nil

// Manually create a dictionary : create an empty dictionary using whatever explicit types you want to store, then set keys one by one
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["Lebron James"] = 206


let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]
let earth = planets[3, default: "Planet X"]
print(venus)
print(earth)
print(planets[1, default: "Planet X"])
print(planets[3, default: "Planet X"])

let ratings = [1: "Bad"]
let rating = ratings[1]
print(ratings[1, default: "none"])

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]


// Dictionary Methods
// - count()
// - removeAll()
