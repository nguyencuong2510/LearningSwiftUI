//
//  CustomLoadingView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct CustomLoadingView: View {
    
    @Binding var isLoading: Bool
    
    var body: some View {
        if isLoading {
            ProgressView()
        } else {
            Text("Finish Loading")
        }
    }
}

#Preview {
    CustomLoadingView(isLoading: .constant(true))
}
