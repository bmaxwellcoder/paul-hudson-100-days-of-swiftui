//
//  ContentView.swift
//  GuessTheFlagTutorial
//
//  Created by Bryan Williamson on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Creating a 3x3 grid
        VStack {
            HStack {
                Color.blue
                    .border(Color.red)
                
                HStack {
                    Color.yellow
                }
                .border(Color.black)
                
                HStack {
                    Color.purple
                }
            }
            
            
            HStack {
                Color.red
                
                HStack {
                    Color.orange
                }
                
                HStack {
                    Color.cyan
                }
            }
            
            HStack {
                Color.green
                
                HStack {
                    Color.gray
                }
                
                HStack {
                    Color.indigo
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
