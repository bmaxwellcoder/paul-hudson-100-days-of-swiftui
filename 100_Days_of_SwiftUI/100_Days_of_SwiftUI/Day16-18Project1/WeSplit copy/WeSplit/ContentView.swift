//
//  ContentView.swift
//  WeSplit
//
//  Created by Bryan Williamson on 5/30/24.
//

/*
 Resources:
 - https://www.hackingwithswift.com/100/swiftui/16
 - https://www.hackingwithswift.com/100/swiftui/17
 - https://www.hackingwithswift.com/plus/solutions/wesplit
 */

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool

    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    // let tipPercentages = [10, 15, 20, 25, 0]

    var grandTotal: Double {
        
        let tipSelection = Double(tipPercentage)
        let tipValue = tipSelection / 100 * checkAmount
        return checkAmount + tipValue

    }
    
    var totalPerPerson: Double {
         grandTotal /  Double(numberOfPeople + 2) // TODO: Offset of 2
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: localCurrency))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)

                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) { // TODO: Offset of 2
                            Text("\($0) people")
                        }
                    }
                }
                
                Section("How much tip do you want to leave?") {
//                    Picker("Tip percentage", selection: $tipPercentage) {
//                        ForEach(tipPercentages, id: \.self) {
//                            Text($0, format: .percent)
//                        }
//                    }
//                    .pickerStyle(.segmented)
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("Total amount") {
                    Text(grandTotal, format: .currency(code: localCurrency))
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
