//
//  ContentView.swift
//  UnitConverter
//
//  Created by Bryan Williamson on 5/31/24.
//

/*
 Resources:
 - https://www.hackingwithswift.com/100/swiftui/19
 - https://www.hackingwithswift.com/plus/solutions/challenge-1-converter
*/

import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
    @State private var unitInput = UnitLength.meters
//    @State private var unitInput = "meters"
    @State private var unitOutput = UnitLength.kilometers
//    @State private var unitOutput = "kilometers"
    @FocusState private var inputFocused: Bool

    
    // let units = ["meters", "kilometers", "feet", "yards", "miles"]
     let units: [UnitLength] = [.meters, .kilometers, .feet, .yards, .miles]
    
    let formatter: MeasurementFormatter // adds class MeasurementFormatter as a property
    
    var result: Double {
        let toMetersMultiplier: Double
        let fromMetersMultiplier: Double
        
        switch unitInput {
        case UnitLength.kilometers:
             toMetersMultiplier = 1000
        case UnitLength.feet:
             toMetersMultiplier = 0.3048
        case UnitLength.yards:
              toMetersMultiplier = 0.9144
        case UnitLength.miles:
             toMetersMultiplier = 1_609.344
        default:
            toMetersMultiplier = 1
        }
        
        switch unitOutput {
        case UnitLength.kilometers:
            fromMetersMultiplier = 0.001
        case UnitLength.feet:
            fromMetersMultiplier = 3.280839895
        case UnitLength.yards:
            fromMetersMultiplier = 1.0936132983
        case UnitLength.miles:
            fromMetersMultiplier = 0.0006213712
        default:
            fromMetersMultiplier = 1.0
        }
        
        let inputInMeters = input * toMetersMultiplier
        let output = inputInMeters * fromMetersMultiplier
        return output
    }
//    var lengthInMeters: Double {
//        switch unitInput {
//        case "meters":
//            return input
//        case "kilometers":
//            return input * 1000
//        case "feet":
//            return input *  0.3048
//        case "yards":
//            return input * 0.9144
//        case "miles":
//            return input * 1_609.344
//        default:
//            return -1
//        }
//    }
//    
//    var convertedLength: Double {
//        switch unitOutput {
//        case "meters":
//            return lengthInMeters
//        case "kilometers":
//            return lengthInMeters / 1000
//        case "feet":
//            return lengthInMeters /  0.3048
//        case "yards":
//            return lengthInMeters / 0.9144
//        case "miles":
//            return lengthInMeters / 1_609.344
//        default:
//            return -1
//        }
//    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Length to Convert from") {
                    TextField("Length", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputFocused)
                   
                        Picker("Convert From:", selection: $unitInput) {
                            ForEach(units, id: \.self) {
                                Text(formatter.string(from: $0))
                            }
                        }
                }
                    
                    Section ("Length to convert to") {
                        Picker("Convert To:", selection: $unitOutput) {
                            ForEach(units, id: \.self) {
                                Text(formatter.string(from: $0))
                            }
                        }
                        
                        Text("The conversion result is \(result.formatted()) \(formatter.string(from: unitOutput))")
                    }
                }
            .navigationTitle("ConvertLength")
            .toolbar {
                if inputFocused {
                    Button("Done") {
                        inputFocused = false
                    }
                }
            }
        }
    }
    init() { // add this new initializer for our struct:
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
    }
}

#Preview {
    ContentView()
}
