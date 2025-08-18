//
//  LearningSwiftUIApp.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 14/8/25.
//

import SwiftUI
import CoreData

@main
struct LearningSwiftUIApp: App {
    @StateObject private var viewModel = PurchaseViewModel()

    var body: some Scene {
        WindowGroup {
            TabView {
                PurchaseView()
                    .environmentObject(viewModel)
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Purchase")
                    }
                
                PurchaseStateView()
                    .environmentObject(viewModel)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("State")
                    }
            }
        }
    }
}
