//: [Previous](@previous)

import Foundation

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT))

//  closure has just a single line of code, so we can remove return:
//let onlyT = team.filter({ (name: String) -> Bool in
//    name.hasPrefix("T")
//})


// filter() must be given a function that accepts one item from its array, and returns true if it should be in the returned array.

// Because the function we pass in must behave like that, we don’t need to specify the types in our closure. So, we can rewrite the code to this:
//let onlyT = team.filter({ name in
//    name.hasPrefix("T")
//})

    // We can go further using special syntax called trailing closure syntax, which looks like this:
//let onlyT = team.filter { name in
//    name.hasPrefix("T")
//}


// Swift can provide short parameter names for us so we don’t even write name in any more, and instead rely on a specially named value provided for us: $0:
let onlyT = team.filter {
    $0.hasPrefix("T")
}

