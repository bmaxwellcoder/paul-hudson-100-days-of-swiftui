import Cocoa

let surname: String = "Lasso"
var score: Int = 0
var number: Double = 0
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
"The Bluest Eye",
"Foundation",
"Girl, Woman, Other"])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .dark

let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
