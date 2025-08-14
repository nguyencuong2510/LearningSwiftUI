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
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
