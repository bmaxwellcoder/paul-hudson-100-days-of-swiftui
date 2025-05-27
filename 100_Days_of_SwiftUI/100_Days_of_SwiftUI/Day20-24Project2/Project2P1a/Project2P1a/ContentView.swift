//
//  ContentView.swift
//  Project2P1a
//
//  Created by Bryan Williamson on 6/11/24.
//

/*
 - https://www.hackingwithswift.com/books/ios-swiftui/guess-the-flag-introduction
 - https://www.hackingwithswift.com/books/ios-swiftui/using-stacks-to-arrange-views
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, world") // implicit VStack w/o declaration
            Text("This is another text view")
        }
        
        Spacer() /* pushes stack from center default */
        ZStack  {
            Text("Hello, world")
            Text("This is another text view")
            /*
             ZStack doesn’t have the concept of spacing because the views overlap, but it does have alignment. So, if you have one large thing and one small thing inside your ZStack, you can make both views align to the top like this: ZStack(alignment: .top) {.

             ZStack draws its contents from top to bottom, back to front. This means if you have an image then some text ZStack will draw them in that order, placing the text on top of the image.
             */
        }
        
        Spacer()
        /*
         Being explicit allows us to specify how much space to place between the views.
         It also allows us to specify an alignment – whether the view should be placed on the left, right, or center of each other.
         If we don't explicitly ask for a vertical stack, SwiftUI is free to arrange those views in a different way – if they were inside a larger view that used horizontal placement, they might also appear horizontally.
         */
    }
}

#Preview {
    ContentView()
}
