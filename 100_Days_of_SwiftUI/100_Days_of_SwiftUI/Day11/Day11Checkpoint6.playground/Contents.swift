import Cocoa

struct Car {
    let model: String
    let seatCount: Int
    let maxGears: Int
    private(set) var gear = 1
    
    
    // need if gear is private
//    init(model: String, seatCount: Int) {
//        self.model = model
//        self.seatCount = seatCount
//    }
    // method to change gears up or down
    // apply variables and access control concepts
    
//    mutating func changeGear(newGear: Int) {
//        if newGear >= 1 && newGear <= 10 {
//            currentGear = newGear
//        } else {
//            print("Input gear to be in range of 1 to 10")
//        }
    
    mutating func changeGear(difference: Int) {
        gear = gear + difference
        
        if gear < 1 {
            gear = 1
        } else if gear > maxGears {
            gear = maxGears
        }
    }
}

var myCar = Car(model: "Mazda CX-50", seatCount: 5, maxGears: 8)
print(myCar.model)
myCar.changeGear(difference: 11)
print(myCar.gear)
