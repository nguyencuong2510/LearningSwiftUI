//
//  Border.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct Border: View {
    var body: some View {
//        Text("Hello, World!")
//            .padding()
//            .overlay {
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(.blue, lineWidth: 5)
//            }
        ZStack {
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [
                    .red, .yellow, .red
                ]), center: .center, angle: .degrees(360)), lineWidth: 50)
                .padding()
            
            Text("100%")
        }
        
    }
}

#Preview {
    Border()
}
