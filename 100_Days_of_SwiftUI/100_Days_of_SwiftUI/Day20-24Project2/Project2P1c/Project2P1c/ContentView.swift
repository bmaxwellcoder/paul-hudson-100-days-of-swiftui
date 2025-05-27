//
//  ContentView.swift
//  Project2P1c
//
//  Created by Bryan Williamson on 6/11/24.
//

/*
 - https://www.hackingwithswift.com/books/ios-swiftui/gradients
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
//        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
//        LinearGradient(stops: [
//            Gradient.Stop(color: .white, location: 0.45),
//            Gradient.Stop(color: .black, location: 0.55),
//        ], startPoint: .top, endPoint: .bottom)
//        
//        LinearGradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55),
//        ], startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)

        /*
        This gradient is created by simply adding .gradient after any color – SwiftUI will automatically convert your color into a very gentle linear gradient. Try it like this:
*/
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}

#Preview {
    ContentView()
}
