//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Bryan Williamson on 6/5/24.
//

import SwiftUI

struct FlagImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

#Preview {
    FlagImage(name: "US")
}
