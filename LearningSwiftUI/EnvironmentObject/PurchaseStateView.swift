//
//  PurchaseStateView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct PurchaseStateView: View {
    
//    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        PurchaseStatusView()
    }
}

#Preview {
    PurchaseStateView()
        .environmentObject(PurchaseViewModel())
}
