//
//  ContentView.swift
//  UnitConverter
//
//  Created by Bryan Williamson on 5/31/24.
//

/*
 Resources:
 - https://www.hackingwithswift.com/plus/solutions/challenge-1-converter
*/
import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
    @State private var inputUnit: Dimension = UnitLength.meters
    @State private var outputUnit: Dimension = UnitLength.kilometers
    @State private var selectedUnits = 0
    @FocusState private var inputFocused: Bool

    let conversions = ["Distance", "Mass", "Temperature", "Time"]
    
    let unitTypes = [
        [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles],
        [UnitMass.grams, UnitMass.kilograms, UnitMass.ounces, UnitMass.pounds],
        [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin],
        [UnitDuration.seconds, UnitDuration.minutes, UnitDuration.hours]
    ]
    
    let formatter: MeasurementFormatter // override user prefence based measurement formatting
    
    var result: String {
        let inputMeasurement = Measurement(value: input, unit: inputUnit)
        let outputMeasurement = inputMeasurement.converted(to: outputUnit)
        return formatter.string(from: outputMeasurement)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Length to Convert") {
                    TextField("Length", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputFocused)
                }
                
                Picker("Conversion", selection: $selectedUnits) {
                    ForEach(0..<conversions.count, id: \.self) {
                        Text(conversions[$0])
                    }
                }
                
                Picker("Convert from", selection: $inputUnit) {
                    ForEach(unitTypes[selectedUnits], id: \.self) {
                        Text(formatter.string(from: $0).capitalized)
                    }
                }
                
                Picker("Convert to", selection: $outputUnit) {
                    ForEach(unitTypes[selectedUnits], id: \.self) {
                        Text(formatter.string(from: $0).capitalized)
                    }
                }
                
                Section("Result") {
                    Text(result)
                    
                }
            }
            .navigationTitle("Converter")
            .toolbar {
                if inputFocused {
                    Button("Done") {
                        inputFocused = false
                    }
                }
            }
            .onChange(of: selectedUnits) {
                let units = unitTypes[selectedUnits]
                inputUnit = units[0]
                outputUnit = units[1]
            }
        }
    }
    
    init() { // measurement formatting override
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
    }
}

#Preview {
    ContentView()
}
