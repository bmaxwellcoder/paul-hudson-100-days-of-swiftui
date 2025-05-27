//
//  ContentView.swift
//  Project1P1a
//
//  Created by Bryan Williamson on 6/10/24.
//
/*
 - https://www.hackingwithswift.com/books/ios-swiftui/wesplit-introduction
 - https://www.hackingwithswift.com/books/ios-swiftui/understanding-the-basic-structure-of-a-swiftui-app
 - https://www.hackingwithswift.com/books/ios-swiftui/creating-a-form
 - https://www.hackingwithswift.com/books/ios-swiftui/adding-a-navigation-bar
 */
import SwiftUI // import functionality from SwiftUI framwork

struct ContentView: View { // creates a new stuct ContentView that conforms to the View protocol from SwiftUI
    // the basic protocol that must be adopted by anything you want to draw on the screen – all text, buttons, images, and more are all views, including your own layouts that combine other views.
    var body: some View { // defines a body computed property that returns "some View", meaning it conforms to the View protocol
        // the one requirement of the View protocol is that you have a body computed property that returns some View
        //        VStack { /*
        //                  imageScale(), foregroundStyle(), and padding() are methods being called on the image and VStack. This is what SwiftUI calls a modifier, which are regular methods with one small difference: they always return a new view that contains both your original data, plus the extra modification you asked for.
        //                  */
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundStyle(.tint)
        //            Text("Hello, world!")
        //        }
        //        .padding()
        NavigationStack { // adds a Navigation Bar
            Form { // Forms are scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more
                Text("Hello, world!")
                
                Section { // If you want to split your form up into visual chunks, just like the Settings app does, you can use Section
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI") // added to form,  creates a new form that has a navigation title plus all the existing contents you provided
            .navigationBarTitleDisplayMode(.inline) // You can get a small font by adding another modifier:
        }
    }
}

#Preview { /*
            a special piece of code that won’t actually form part of your final app that goes to the App Store, but is instead specifically for Xcode to use so it can show a preview of your UI design alongside your code.
            */
    ContentView()
}
