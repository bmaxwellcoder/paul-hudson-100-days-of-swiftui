//
//  ContentView.swift
//  Project2P2a
//
//  Created by Bryan Williamson on 6/11/24.
//
/*
 - https://www.hackingwithswift.com/books/ios-swiftui/stacking-up-buttons
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
