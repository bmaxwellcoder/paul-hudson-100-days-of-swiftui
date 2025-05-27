//
//  ContentView.swift
//  BetterRest
//
//  Created by Bryan Williamson on 6/6/24.
//

import CoreML
import SwiftUI
/*
 Resources:
 - https://www.hackingwithswift.com/books/ios-swiftui/betterrest-introduction
 - https://www.hackingwithswift.com/books/ios-swiftui/entering-numbers-with-stepper
 - https://www.hackingwithswift.com/books/ios-swiftui/selecting-dates-and-times-with-datepicker
 - https://www.hackingwithswift.com/books/ios-swiftui/working-with-dates
 - https://www.hackingwithswift.com/books/ios-swiftui/training-a-model-with-create-ml
 - https://www.hackingwithswift.com/books/ios-swiftui/building-a-basic-layout
 - https://www.hackingwithswift.com/books/ios-swiftui/connecting-swiftui-to-core-ml
 - https://www.hackingwithswift.com/books/ios-swiftui/cleaning-up-the-user-interface
 - https://www.hackingwithswift.com/plus/solutions/betterrest
 */

/*
 Challenge
 1) Replace each VStack in our form with a Section, where the text view is the title of the section. Do you prefer this layout or the VStack layout? It’s your app – you choose!
 2) Replace the “Number of cups” stepper with a Picker showing the same range of values.
 3) Change the user interface so that it always shows their recommended bedtime using a nice and large font. You should be able to remove the “Calculate” button entirely.
 */
struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var bedTime = Date.now
    /*
     @State private var alertTitle = ""
     @State private var alertMessage = ""
     @State private var showingAlert = false
     */
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }
    
    var sleepResults: String {
        do {
            let config = MLModelConfiguration() //
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep // bedtime
            return "Your ideal bedtime is " + sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            return "There was an error"
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                //                VStack(alignment: .leading, spacing: 0) {
                //                    Text("When do you want to wake up?")
                //                        .font(.headline)
                //
                //                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                //                        .labelsHidden()
                //                }
                
                Section() {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                } header: {
                    Text("When do you want to wake up?")
                        .font(.title)
                }
                
                //                VStack(alignment: .leading, spacing: 0) {
                //                    Text("Desired amount of sleep")
                //                        .font(.headline)
                //
                //                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                //                }
                
                Section("Desired amount of sleep") {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }
                
                //                VStack(alignment: .leading, spacing: 0) {
                //                    Text("Daily coffee intake")
                //                        .font(.headline)
                //
                //                    Stepper("^[\(coffeeAmount) cup](inflect: true)", value: $coffeeAmount, in: 1...20)
                //                    }
                //                }
                
                Section("Daily coffee intake") {
                    Picker("Number of cups", selection: $coffeeAmount) {
                        ForEach(1..<21) {
                            Text(String($0))
                            
                        }
                    }
                }
                
                Text(sleepResults)
                    .font(.title3)
                
            }
            /*
             .navigationTitle("BetterRest")
             .toolbar {
             Button("Calculate", action: calculateBedtime)
             }
             .alert(alertTitle, isPresented: $showingAlert) {
             Button("OK") {}
             } message: {
             Text(alertMessage)
             }
             */
        }
    }
    
    //    func calculateBedtime() {
    //        do { //  do/catch blocks, because using Core ML can throw errors in two places: loading the model as seen above, but also when we ask for predictions
    //            let config = MLModelConfiguration() //
    //            let model = try SleepCalculator(configuration: config)  //  create an instance of the SleepCalculator class
    //            // model instance is the thing that reads in all our data, and will output a prediction
    //            // configuration is there in case you need to enable a handful of what are fairly obscure options
    //
    //            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
    //            let hour = (components.hour ?? 0) * 60 * 60
    //            let minute = (components.minute ?? 0) * 60
    //
    //            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
    //
    //            let sleepTime = wakeUp - prediction.actualSleep // bedtime
    //
    //            alertTitle = "Your ideal bedtime is..."
    //            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
    //
    //
    //        } catch {
    //
    //            alertTitle = "Error"
    //            alertMessage = "Sorry, there was a problem calculating your bedtime."
    //
    //        }
    //
    //        showingAlert = true
    //
    //    }
}

#Preview {
    ContentView()
}
