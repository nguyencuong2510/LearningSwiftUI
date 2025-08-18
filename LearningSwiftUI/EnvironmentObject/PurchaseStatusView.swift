//
//  RootTabbarView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct PurchaseStatusView: View {
    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        VStack {
            Image(systemName: vm.isPurchased ? "lock.open" : "lock")
                .font(.system(size: 52))
                .padding()
            
            Text(vm.isPurchased ? "Hello, World!" : "Please purchase to use this action")
        }
    }
}

#Preview {
    PurchaseStatusView()
        .environmentObject(PurchaseViewModel())
}
