//
//  ContentView.swift
//  WordScrambleTutorial
//
//  Created by Bryan Williamson on 6/7/24.
//
/*
 Resources:
 - https://www.hackingwithswift.com/books/ios-swiftui/word-scramble-introduction
 - https://www.hackingwithswift.com/books/ios-swiftui/introducing-list-your-best-friend
 - https://www.hackingwithswift.com/books/ios-swiftui/loading-resources-from-your-app-bundle
 - https://www.hackingwithswift.com/books/ios-swiftui/working-with-strings
 */

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        // Lists provides a scrolling table of data
        // - identical to form excecpt it's used for presentation of data rather than requesting user input
        
        List {
            
            Section("Section 1") {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            
            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }
        }
        .listStyle(.grouped)
        
        List(0..<5) { // one thing List can do that Form can’t is to generate its rows entirely from dynamic content without needing a ForEach.
            Text("Dynamic row \($0)")
        }
        
        List(people, id: \.self) {
            Text($0)
        }
        
        List {
            Text("Static Row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static Row")
        }
    }
    
    func textBundle() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we found the file in our bundle!
            
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string!
                // If it can’t be loaded it throws an error, so you need to call this using try or try? like this:
            }
        }
    }
    
    func testStrings() {
        // Swift gives us a method called components(separatedBy:) that can converts a single string into an array of strings by breaking it up wherever another string is found. For example, this will create the array ["a", "b", "c"]:
//        let input = "a b c"
//        let letters = input.components(separatedBy: " ")
        
        let input = """
                    a
                    b
                    c
                    """
        let letters = input.components(separatedBy: "\n")
        
        /*
         Regardless of what string we split on, the result will be an array of strings. From there we can read individual values by indexing into the array, such as letters[0] or letters[2], but Swift gives us a useful other option: the randomElement() method returns one random item from the array.

         For example, this will read a random letter from our array:
         */
        
        let letter = letters.randomElement()
        
        
        /*
         Another useful string method is trimmingCharacters(in:), which asks Swift to remove certain kinds of characters from the start and end of a string. This uses a new type called CharacterSet, but most of the time we want one particular behavior: removing whitespace and new lines – this refers to spaces, tabs, and line breaks, all at once.

         This behavior is so common it’s built right into the CharacterSet struct, so we can ask Swift to trim all whitespace at the start and end of a string like this:
         */
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)

        
        /*
         the ability to check for misspelled words.

         This functionality is provided through the class UITextChecker. You might not realize this, but the “UI” part of that name carries two additional meanings with it:

         This class comes from UIKit. That doesn’t mean we’re loading all the old user interface framework, though; we actually get it automatically through SwiftUI.
         It’s written using Apple’s older language, Objective-C. We don’t need to write Objective-C to use it, but there is a slightly unwieldy API for Swift users.
         Checking a string for misspelled words takes four steps in total. First, we create a word to check and an instance of UITextChecker that we can use to check that string:
         */
        
        
        /*
         
         First, we create a word to check and an instance of UITextChecker that we can use to check that string:
         
         let word = "swift"
         let checker = UITextChecker()
         
         Second, we need to tell the checker how much of our string we want to check. If you imagine a spellchecker in a word processing app, you might want to check only the text the user selected rather than the entire document.

         However, there’s a catch: Swift uses a very clever, very advanced way of working with strings, which allows it to use complex characters such as emoji in exactly the same way that it uses the English alphabet. However, Objective-C does not use this method of storing letters, which means we need to ask Swift to create an Objective-C string range using the entire length of all our characters, like this:
         let range = NSRange(location: 0, length: word.utf16.count)

         
         Third, we can ask our text checker to report where it found any misspellings in our word, passing in the range to check, a position to start within the range (so we can do things like “Find Next”), whether it should wrap around once it reaches the end, and what language to use for the dictionary:
         
         let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

         So, we could check our spelling result to see whether there was a mistake or not like this:

         let allGood = misspelledRange.location == NSNotFound
         */
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)

        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

        let allGood = misspelledRange.location == NSNotFound

        
        
    }
}

#Preview {
    ContentView()
}
