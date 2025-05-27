//
//  ContentView.swift
//  Project1P3
//
//  Created by Bryan Williamson on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2 // can set this to 0 to handle offset of picker
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount * tipSelection / 100
        return checkAmount + tipValue
    }
    
    var totalPerPerson: Double {
//        let peopleCount = Double(numberOfPeople + 2)
//
//        return grandTotal / peopleCount
        
        grandTotal / Double(numberOfPeople + 2)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: localCurrency))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
                .pickerStyle(.navigationLink)
                
                Section ("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                //    .pickerStyle(.navigationLink)
                }
                
                Section ("Total Amount") {
                    Text(totalPerPerson * Double(numberOfPeople + 2), format: .currency(code: localCurrency))
                }
                
                Section ("Amount per person") {
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
