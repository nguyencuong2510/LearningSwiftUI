//
//  ObserverableObjectView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct ObserverableObjectView: View {
    
   @StateObject private var vm = PeopleViewModel()
    
    var body: some View {
        if vm.isLoading {
            ProgressView()
            Text("Loading...")
                .padding()
        } else {
            Text(vm.pepples.isEmpty ? "No User" : "Manager to get \(vm.pepples.count) uers")
        }
        Button(action: vm.fetchPeople) {
            Text("Fetch some people")
        }
    }
}

#Preview {
    ObserverableObjectView()
}
