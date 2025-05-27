//: [Previous](@previous)

import Foundation
// Property observers are pieces of code that run when properties change: didSet runs when the property just changed, and willSet runs before the property changed.


struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
