//
//  Untitled.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import Foundation
import Combine

final class PurchaseViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var isPurchased: Bool = false
    
    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoading = false
            self.isPurchased = true
        }
    }
}
