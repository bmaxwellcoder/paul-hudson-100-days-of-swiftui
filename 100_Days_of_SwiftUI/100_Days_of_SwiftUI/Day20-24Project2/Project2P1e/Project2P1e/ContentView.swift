//
//  ContentView.swift
//  Project2P1e
//
//  Created by Bryan Williamson on 6/11/24.
//
/*
 - https://www.hackingwithswift.com/books/ios-swiftui/showing-alert-messages
 */
import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
//        Button("Show Alert") {
//                    showingAlert = true
//                }
//                .alert("Important message", isPresented: $showingAlert) {
////        That’s an empty closure, meaning that we aren’t assigning any functionality to run when the button is pressed. That doesn’t matter, though, because any button inside an alert will automatically dismiss the alert – that closure is there to let us add any extra functionality beyond just dismissing the alert.
//                    Button("OK") { }
//                }
        
        /*
         You can add more buttons to your alert, and this is a particularly good place to add roles to make sure it’s clear what each button does:
         */
//        Button("Show Alert") {
//                    showingAlert = true
//                }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Delete", role: .destructive) { }
//            Button("Cancel", role: .cancel) { }
//        }
        
        /*
         .alert("Important message", isPresented: $showingAlert) {
             Button("Delete", role: .destructive) { }
             Button("Cancel", role: .cancel) { }
         }
         */
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }
}

#Preview {
    ContentView()
}
