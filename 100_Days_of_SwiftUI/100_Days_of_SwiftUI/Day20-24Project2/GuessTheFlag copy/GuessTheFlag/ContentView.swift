//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Bryan Williamson on 6/4/24.
//

import SwiftUI
/*
 Resources:
 - https://www.hackingwithswift.com/100/swiftui/20
 - https://www.hackingwithswift.com/100/swiftui/21
 - https://www.hackingwithswift.com/plus/solutions/guess-the-flag
 */
struct ContentView: View {
    static let allCountries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    // properties to store game data
    @State private var countries = allCountries.shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    //  @State private var selection = Int.random(in: 0...2)
    
    @State private var showingScore = false //  property to store whether the alert is showing or not
    @State private var showingResults = false
    @State private var scoreTitle = "" // add this property to store the title that will be shown inside the alert
    
    @State private var questionCounter = 1
    @State private var score = 0 // property to store player score
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                VStack(spacing: 15) {
                    VStack { // lay out our game prompt in a vertical stack
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer]) // displays country to select flag off
                        // .foregroundStyle(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            //selection =
                            flagTapped(number) // determines if correct flag was tapped
                        } label: {
                            Image(countries[number]) // displays countries 0, 1, 2
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            //                if scoreTitle == "Wrong" {
            //                    Text("Wrong! That's the flag for \(countries[selection])")
            //                }
            
            Text("Your score is \(score).")
        }
        .alert("Game over.", isPresented: $showingResults) {
            Button("Start Again", action: newGame)
        } message: {
            Text("Your final score was \(score)")
        }
    }
    
    func flagTapped(_ number: Int){
        if number == correctAnswer { // accepts the integer of the button and checks whether that matches our correctAnswer property
            // accept the number of the button that was tapped, compare that against the correct answer, then set showTitle and showwingScore so we can show a meaningful alert
            scoreTitle = "Correct"
            score += 1
        } else {
            let needsThe = ["UK", "US"]
            let theirAnswer = countries[number]
            
            if needsThe.contains(theirAnswer) {
                scoreTitle = "Wrong! That's the flag of the \(countries[number])"
            } else {
                scoreTitle = "Wrong! That's the flag of \(countries[number])"
            }
            
            if score > 0 {
                score -= 1
            }
        }
        if questionCounter == 8 {
            showingResults = true
        } else {
            showingScore = true
        }
    }
    
    func askQuestion() { // resets the game by shuffling up the countries and picking a new correct answer
        countries.remove(at: correctAnswer) // remove repeats
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionCounter += 1
    }
    
    func newGame() {
        questionCounter = 0
        score = 0
        countries = Self.allCountries
        askQuestion()
    }
}

#Preview {
    ContentView()
}
