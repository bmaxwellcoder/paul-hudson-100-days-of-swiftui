//
//  ContentView.swift
//  WeSplit
//
//  Created by Bryan Williamson on 5/30/24.
//


import SwiftUI

/*
 Conditional Modifiers:
 - apply modifiers only when a certain condition is met
 - https://www.hackingwithswift.com/books/ios-swiftui/conditional-modifiers
 
 - Go back to project 1 and use a conditional modifier to change the total amount text view to red if the user selects a 0% tip.
 */

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let localCurrency = Locale.current.currency?.identifier ?? "USD"

    var grandTotal: Double {
        
        let tipSelection = Double(tipPercentage)
        let tipValue = tipSelection / 100 * checkAmount
        return checkAmount + tipValue

    }
    
    var totalPerPerson: Double {
         grandTotal /  Double(numberOfPeople + 2)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: localCurrency))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)

                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                   // .pickerStyle(.navigationLink)
                }
                
                Section("Total amount") {
                    Text(grandTotal, format: .currency(code: localCurrency))
                        .foregroundStyle(tipPercentage == 0 ? .red : .primary)
                }
                
                Section("Amount  per person") {
                    Text(totalPerPerson, format: .currency(code: localCurrency))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
