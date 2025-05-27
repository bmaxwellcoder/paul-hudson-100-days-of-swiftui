import Cocoa
/*
 Your protocol should require the following:

 1) A property storing how many rooms it has.
 2) A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
 3) A property storing the name of the estate agent responsible for selling the building.
 4) A method for printing the sales summary of the building, describing what it is along with its other properties.

 */
protocol Building {
    var type: String { get }
    var rooms: Int  { get }
    var cost: Int { get set }
    var agent: String { get set }
    func printSaleSummary()
}

extension Building {
    func printSaleSummary() {
        print("The \(rooms) room \(type) is set to sell for $\(cost) through real estate agent \(agent).")
    }
}

struct House: Building {
    let type = "house"
    let rooms: Int
    var cost: Int
    var agent: String
    
//    func printSaleSummary() { // used extension to implement
//        print("The \(rooms) room \(type) is set to sell for $\(cost) through real estate agent \(agent).")
//    }
}

struct Office: Building {
    let type = "office"
    let rooms: Int
    var cost: Int
    var agent: String
    
//    func printSaleSummary() { // used extension to implement
//        print("The \(rooms) room office is set to sell for $\(cost) through real estate agent (\(agent).")
//    }
}

let exampleHouse = House(rooms: 4, cost: 250_000, agent: "Aang")
exampleHouse.printSaleSummary()

let exampleOffice = Office(rooms: 30, cost: 10_000_000, agent: "Zuko")
exampleOffice.printSaleSummary()
