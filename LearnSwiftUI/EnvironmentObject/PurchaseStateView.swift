//
//  PurchaseStateView.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 22/9/25.
//

import SwiftUI

struct PurchaseStateView: View {
    
    @EnvironmentObject var purchaseVM: PurchaseViewModel
    
    var body: some View {
        VStack {
            Image(systemName: purchaseVM.hasPurchased ? "lock.open" : "lock")
                .font(.system(size: 50, weight: .bold))
                .symbolVariant(.fill)
            Text("The user \(purchaseVM.hasPurchased ? "has" : "hasn't") unlocked this content")
        }
    }
}

#Preview {
    PurchaseStateView()
        .environmentObject(PurchaseViewModel())
}
