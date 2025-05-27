//
//  ContentView.swift
//  BetterRest
//
//  Created by Bryan Williamson on 6/6/24.
//

/*
 Resources:
 - https://www.hackingwithswift.com/books/ios-swiftui/entering-numbers-with-stepper
 - https://www.hackingwithswift.com/books/ios-swiftui/selecting-dates-and-times-with-datepicker
 - https://www.hackingwithswift.com/books/ios-swiftui/working-with-dates
 - https://www.hackingwithswift.com/books/ios-swiftui/training-a-model-with-create-ml
 */

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now

    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        
        DatePicker("Please enter a date and time", selection: $wakeUp)
            .labelsHidden()
       
        DatePicker("Please enter a date", selection: $wakeUp,  in: Date.now..., displayedComponents: .date)
            .labelsHidden()
        
        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
        
        /*
         In the project we’re making we’ll be using dates in three ways:

         1) Choosing a sensible default “wake up” time.
         2) Reading the hour and minute they want to wake up.
         3) Showing their suggested bedtime neatly formatted.

         */
        
        // 3)
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now, format: .dateTime.day().month().year())
        
        Text(Date.now.formatted(date: .long, time: .shortened))
        
    }
    
    func exampleDates() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
        
        // 1)
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let data = Calendar.current.date(from: components) ?? .now
        
        // 2)
        let components2 = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

#Preview {
    ContentView()
}
