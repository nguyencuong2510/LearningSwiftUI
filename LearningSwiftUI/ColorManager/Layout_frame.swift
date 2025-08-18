//
//  Layout_frame.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct Layout_frame: View {
    var body: some View {
        Image("Image")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(alignment: .bottomTrailing) {
                Text("New Video 1223")
                    .foregroundColor(.white)
                    .bold()
                    .font(.callout)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.red)
                    .clipShape(Capsule())
                    .offset(x: 25, y: 10)
            }
    }
}

#Preview {
    Layout_frame()
}
