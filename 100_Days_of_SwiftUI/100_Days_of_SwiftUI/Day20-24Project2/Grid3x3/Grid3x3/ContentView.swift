//
//  ContentView.swift
//  Grid3x3
//
//  Created by Bryan Williamson on 6/11/24.
//

/*
 - https://www.hackingwithswift.com/books/ios-swiftui/using-stacks-to-arrange-views
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    ZStack {
                        Color.blue
                        Text("1")
                    }
                }
                
                HStack {
                    ZStack {
                        Color.green
                        Text("2")
                    }
                }
                
                HStack {
                    ZStack {
                        Color.red
                        Text("3")
                    }
                }
            }
            
            HStack {
                HStack {
                    ZStack {
                        Color.blue
                        Text("4")
                    }
                }
                
                HStack {
                    ZStack {
                        Color.green
                        Text("5")
                    }
                }
                
                HStack {
                    ZStack {
                        Color.red
                        Text("6")
                    }
                }
                
            }
            
            HStack {
                HStack {
                    ZStack {
                        Color.blue
                        Text("7")
                    }
                }
                
                HStack {
                    ZStack {
                        Color.green
                        Text("8")
                    }
                }
                
                HStack {
                    ZStack {
                        Color.red
                        Text("9")
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
