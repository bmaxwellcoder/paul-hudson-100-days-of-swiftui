//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Bryan Williamson on 6/5/24.
//
/*
 - https://www.hackingwithswift.com/guide/ios-swiftui/2/1/what-you-learned
 - https://www.hackingwithswift.com/guide/ios-swiftui/2/2/key-points
 - https://www.hackingwithswift.com/guide/ios-swiftui/2/3/challenge
 
 - Each turn of the game the app will randomly pick either rock, paper, or scissors.
 - Each turn the app will alternate between prompting the player to win or lose.
 - The player must then tap the correct move to win or lose the game.
 - If they are correct they score a point; otherwise they lose a point.
 - The game ends after 10 questions, at which point their score is shown.
 
 To solve this challenge you’ll need to draw on skills you learned in tutorials 1 and 2:
 
 1) Start with an App template, then create a property to store the three possible moves: rock, paper, and scissors.
 2) You’ll need to create two @State properties to store the app’s current choice and whether the player should win or lose.
 3) You can use Int.random(in:) to select a random move. You can use it for whether the player should win too if you want, but there’s an even easier choice: Bool.random() is randomly true or false. After the initial value, use toggle() between rounds so it’s always changing.
 4) Create a VStack showing the player’s score, the app’s move, and whether the player should win or lose. You can use if shouldWin to return one of two different text views.
 5) The important part is making three buttons that respond to the player’s move: Rock, Paper, or Scissors.
 6) Use the font() modifier to adjust the size of your text. If you’re using emoji for the three moves, they also scale. Tip: You can ask for very large system fonts using .font(.system(size: 200)) – they’ll be a fixed size, but at least you can make sure they are nice and big
 */
import SwiftUI

struct ContentView: View {
    let moves = ["✊🏾", "✋🏾", "✌🏾"] // indices: 0, 1, 2
    
    @State private var computerChoice = Int.random(in: 0...2)
    @State private var userChoice = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    
    @State private var showingResults = false
    
    @State private var questionCount = 1
    @State private var score = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            
            Text("Computer has played...")
                .font(.headline)
        
            Text(moves[computerChoice])
                .font(.system(size: 200))
            
            if shouldWin {
                Text("Which one wins?")
                    .foregroundStyle(.green)
                    .font(.title)
            } else {
                Text("Which one loses?")
                    .foregroundStyle(.red)
                    .font(.title)
            }
            
            HStack {
                ForEach(0..<3) { number in
                    Button(moves[number]) {
                        play(number)
                        // handle move tap later
                    }
                    .font(.system(size: 60))
                
//                    Button {
//                        moveTapped(move)
//                    } label: {
//                        Text(moves[move])
//                    }
                }
                
            }
            
            Spacer()
            
            Text("Score: \(score)")
                .foregroundStyle(.primary)
                .font(.title.bold())
        }
        
        .alert("Game over.", isPresented: $showingResults) {
            Button("Play Again", action: reset)
        } message: {
            Text("Your final score was \(score)")
        }
    }
    
    func play(_ choice: Int) {
//        if shouldWin == true && moves[appChoice] == "rock" && move == 1 {// choose to win for rock
//            score += 1
//        } else if shouldWin == true && moves[appChoice] == "paper" && move == 2 { // choose to win for paper
//            score += 1
//        } else if shouldWin == true && moves[appChoice] == "scissors" && move == 0 { // choose to win for scissors
//            score += 1
//        } else if shouldWin == false && moves[appChoice] == "rock" && move != 1 { // choose to lose for paper
//            score += 1
//        } else if shouldWin == false && moves[appChoice] == "paper" && move != 2 { // choose to lose for paper
//            score += 1
//        } else if shouldWin == false && moves[appChoice] == "scissors" && move != 0 { // choose to lose for scissors
//            score += 1
//        } else {
//            if score > 0 {
//                score -= 1
//            }
//        }
        
        let winningMoves = [1, 2, 0]
        let didWin: Bool
        
        if shouldWin { // if should win
            didWin = choice == winningMoves[computerChoice] // get #s to match, does the user choice match output from winningMoves w/ computerChoice
        } else { // if should lose
            didWin = winningMoves[choice] == computerChoice // does output from winningMoves w/ user choice match computer choice
            // should lose
        }
        
        if didWin {
            score += 1
        } else {
            score -= 1
        }
        
        if questionCount == 10 {
            showingResults = true
        } else {
            computerChoice = Int.random(in: 0..<3)
            shouldWin.toggle()
            questionCount += 1
        }
    }
    
    func reset() {
        computerChoice = Int.random(in: 0...2)
        shouldWin = Bool.random()
        questionCount = 0
        score = 0
    }
}

#Preview {
    ContentView()
}
