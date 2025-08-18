//
//  ColorManager.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct ColorManager: View {
    var body: some View {
        ZStack {
//            LinearGradient(stops: [
//                .init(color: .black, location: 0.2),
//                .init(color: .red, location: 0.5)
//            ], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()

            AngularGradient(colors: [
                .red,
                .blue,
            ], center: .center)
            .mask {
                Text("Nguuyen van cuong")
                    .bold()
                    .font(.largeTitle)
            }

            
        }
    }
}

#Preview {
    ColorManager()
}
