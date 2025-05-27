//
//  ContentView.swift
//  Project2P1b
//
//  Created by Bryan Williamson on 6/11/24.
//

/*
 - https://www.hackingwithswift.com/books/ios-swiftui/colors-and-frames
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Color.red // treats this as a view itself
////                .frame(width: 200, height: 200)
            Color(red: 1, green: 0.8, blue: 0) // can create custom colors by passing in values between 0 and 1 for red, green, and blue, like this:
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Your content")
            /*
             same as 
             ZStack {
             Text("Your content")
                 .background(.red)
         }
             */
            
            // - Color.primary is the default color of text in SwiftUI
            // - Color.secondary: black or white depending on the device, but now has slight transparency so that a little of the color behind it shines through.
        }
        .background(.red)
        
        ZStack {
            VStack(spacing: 0) {
                    Color.red
                    Color.blue
                }

                Text("Your content")
                    .foregroundStyle(.secondary)
                    .padding(50)
                    .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
