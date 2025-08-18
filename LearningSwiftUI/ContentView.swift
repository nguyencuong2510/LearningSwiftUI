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

    fileprivate func extractedFunc() -> Button<Text> {
        return Button {
            withAnimation {
                isOpen.toggle()
            }
        } label: {
            Text("Toggle Arrow 11")
        }
    }
    
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            Image(systemName: "arrow.down")
                .rotationEffect(.init(degrees: isOpen ? 0 : 180))
            ViewDependencyArrow(isOpen: $isOpen)
            extractedFunc()

            ViewDependencyArrow(isOpen: $isState)

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

struct ViewDependencyArrow: View {
    @Binding var isOpen: Bool

    var body: some View {
        let _ = Self._printChanges()
        return Image(systemName: "arrow.down")
            .rotationEffect(.init(degrees: isOpen ? 0 : 180))
    }
}

#Preview {
    NavigationView {
        ContentView()
            .navigationTitle("Title Header")
    }
//    .preferredColorScheme(.dark)
}
