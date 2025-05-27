import Cocoa


let celsius = 100.0
let fahrenheit = ((celsius * 9) / 5) + 32
print("The temperature of \(celsius)°C is equivalent to \(fahrenheit)°F")

let convertedBack = ((fahrenheit - 32) * 5) / 9
print("\(convertedBack)°C")
