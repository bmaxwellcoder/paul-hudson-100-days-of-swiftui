//
//  ContentView.swift
//  Project1P1b
//
//  Created by Bryan Williamson on 6/10/24.
//
/*
 
 - https://www.hackingwithswift.com/books/ios-swiftui/modifying-program-state
 - https://www.hackingwithswift.com/books/ios-swiftui/binding-state-to-user-interface-controls
 - https://www.hackingwithswift.com/books/ios-swiftui/creating-views-in-a-loop
 */
import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]

    @State private var tapCount = 0 /*
                             @State allows us to work around the limitation of structs: we know we can’t change their properties because structs are fixed, but @State allows that value to be stored separately by SwiftUI in a place that can be modified
                             
                             
                             - @State is specifically designed for simple properties that are stored in one view. As a result, Apple recommends we add private access control to those
                             */
    @State private var name = "" // @Staete updates name property
    
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name) /* $: two-way binding: we bind the text field so that it shows the value of our property, but we also bind it so that any changes to the text field also update the property*/
            Text("Your name is \(name)")
            
            ForEach(0..<5) { number in
                    Text("Row \(number)")
                }
            
            ForEach(0..<5) { // shorthand closure syntax
                    Text("Row \($0)")
                }
            Picker("Select your student", selection: $selectedStudent) {
                                ForEach(students, id: \.self) {
                                    Text($0)
                                }
                            }
        }
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
