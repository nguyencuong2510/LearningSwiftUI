//
//  PurchaseView.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 18/8/25.
//

import SwiftUI

struct PurchaseView: View {
    
    @EnvironmentObject var vm: PurchaseViewModel
    
    var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView()
            }
            Button(action: vm.purchase) {
                Text("Purchase")
                    .font(.system(size: 16))
                    .opacity(vm.isPurchased ? 0.5 : 1)
                    .disabled(vm.isPurchased ? true : false)
            }
        }
    }
}

#Preview {
    PurchaseView()
        .environmentObject(PurchaseViewModel())
}
