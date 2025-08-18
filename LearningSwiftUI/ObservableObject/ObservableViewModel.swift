//
//  ObservableViewModel.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//
import Foundation
import Combine

final class PeopleViewModel: ObservableObject {
    
    @Published var pepples: [String] = []
    @Published var isLoading: Bool = false
    
    func fetchPeople()  {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: { [unowned self] in
            self.pepples = ["Nguyen", "van", "Cuong"]
            self.isLoading = false
        })
    }
}
