//
//  ContentView.swift
//  Project2P1d
//
//  Created by Bryan Williamson on 6/11/24.
//
/*
 - https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        /*
         simplest way to make a button is one we’ve looked at previously: when it just contains some text you pass in the title of the button, along with a closure that should be run when the button is tapped:
         */
        //        Button("Delete selection") {
        //            print("Now deleting…")
        //        }
        /*
         Of course, that could be any function rather than just a closure, so this kind of thing is fine:
         */
        // Button("Delete selection", action: executeDelete)
        
        /*
         could say that our Delete button has a destructive role like this:
         */
        //        Button("Delete selection", role: .destructive, action: executeDelete)
        
        /*
         can use one of the built-in styles for buttons: .bordered and .borderedProminent.
         */
//        VStack {
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//            // If you want to customize the colors used for a bordered button, use the tint() modifier like this:
//                .tint(.mint)
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//        }
        
        /*
        If you want something completely custom, you can pass a custom label using a second trailing closure:
         */
//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.red)
//        }
        /*
         SwiftUI has a dedicated Image type for handling pictures in your apps, and there are three main ways you will create them:

         Image("pencil") will load an image called “Pencil” that you have added to your project.
         Image(decorative: "pencil") will load the same image, but won’t read it out for users who have enabled the screen reader. This is useful for images that don’t convey additional important information.
         Image(systemName: "pencil") will load the pencil icon that is built into iOS. This uses Apple’s SF Symbols icon collection, and you can search for icons you like – download Apple’s free SF Symbols app from the web to see the full set.
         
         longer form of buttons can have any kind of views inside them, you can use images like this:
         */
        
//        Button {
//            print("Edit button was tapped")
//        } label: {
//            Image(systemName: "pencil")
//        }
        
        
        /*
         If you want both text and image at the same time, you have two options. The first is provide them both to the Button directly, like this:
         */
        
//        Button("Edit", systemImage: "pencil") {
//            print("Edit button was tapped")
//        }
        
        
        /*
         if you want something more custom, SwiftUI has a dedicated type called Label.
         */
        Button {
            print("Edit button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
    }
    
    func executeDelete() {
            print("Now deleting…")
        }
}

#Preview {
    ContentView()
}
