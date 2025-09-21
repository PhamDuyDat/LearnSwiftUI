//
//  PurchaseViewModel.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 22/9/25.
//

import Foundation


final class PurchaseViewModel: ObservableObject {
    
    @Published var hasPurchased: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.isLoading = false
            strongSelf.hasPurchased = true
        }
    }
}
