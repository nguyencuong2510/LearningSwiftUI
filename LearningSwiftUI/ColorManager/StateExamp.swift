//
//  StateExamp.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct StateExamp: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundColor(isOn ? .yellow : .black)
            
            Toggle(isOn: $isOn) {
                Text("Toggle Light Switch")
            }
            .labelsHidden()
            
        }
    }
}

#Preview {
    StateExamp()
}
