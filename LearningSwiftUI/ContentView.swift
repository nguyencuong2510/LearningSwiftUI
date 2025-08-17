//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 14/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOpen = false
    @State private var isState = false
    
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            Image(systemName: "arrow.down")
                .rotationEffect(.init(degrees: isOpen ? 0 : 180))
            
            Button {
                withAnimation {
                    isOpen.toggle()
                }
            } label: {
                Text("Toggle Arrow")
            }
            
            Spacer(minLength: 20)
            
            Image(systemName: "arrow.down")
                .rotationEffect(.init(degrees: isState ? 0 : 180))
        
            Button {
                withAnimation {
                    isState.toggle()
                }
            } label: {
                Text("Toggle Arrow1")
            }
        }
    }
}

#Preview {
    ContentView()
}
