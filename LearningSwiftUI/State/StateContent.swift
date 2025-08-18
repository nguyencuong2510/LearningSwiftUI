//
//  StateContent.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct StateContent: View {
    @State var isLoading = false

    var body: some View {
        VStack {
            CustomLoadingView(isLoading: $isLoading)
            
            Button {
                isLoading.toggle()
            } label: {
                Text("\(!isLoading ? "Start" : "Stop") Loading")
            }
        }
    }
}

#Preview {
    StateContent()
}
