//
//  ContentView.swift
//  Project1P2
//
//  Created by Bryan Williamson on 6/10/24.
//
/*
 - https://www.hackingwithswift.com/books/ios-swiftui/reading-text-from-the-user-with-textfield
 - https://www.hackingwithswift.com/books/ios-swiftui/creating-pickers-in-a-form
 - https://www.hackingwithswift.com/books/ios-swiftui/adding-a-segmented-control-for-tip-percentages
 - https://www.hackingwithswift.com/books/ios-swiftui/calculating-the-total-per-person
 - https://www.hackingwithswift.com/books/ios-swiftui/hiding-the-keyboard
 */

import SwiftUI

struct ContentView: View {
    let tipPercentages = [10, 15, 20, 25, 0]
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2 // can set this to 0 to handle offset of picker
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount * tipSelection / 100
        let grandTotal = checkAmount + tipValue
        
        return grandTotal / peopleCount
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section { /*
                           SwiftUI likes TextField to be used for entering text – strings
                           */
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2..<100) { /*  0th row – the first that is created – contains “2 People”,
                                        so when we gave numberOfPeople the value of 2 we were actually setting it to the third row, which is “4 People”
                                        */
                        Text("\($0) people")
                    }
                }
                .pickerStyle(.navigationLink)
                
                Section ("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit") /*
                                         navigation stacks are capable of showing many views as your program runs, so by attaching the title to the thing inside the navigation stack we’re allowing iOS to change titles freely
                                         */
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
            /*
             The toolbar() modifier lets us specify toolbar items for a view. These toolbar items might appear in various places on the screen – in the navigation bar at the top, in a special toolbar area at the bottom, and so on.
             The condition checks whether amountIsFocused is currently true, so we only show the button when the text field is active.
             The Button view we’re using here displays some tappable text, which in our case is “Done”. We also need to provide it with some code to run when the button is pressed, which in our case sets amountIsFocused to false so that the keyboard is dismissed.
             */
        }
    }
}

#Preview {
    ContentView()
}
