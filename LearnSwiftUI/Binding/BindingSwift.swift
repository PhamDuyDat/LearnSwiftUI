//
//  BindingSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 21/9/25.
//

import SwiftUI

struct BindingSwift: View {
    
    @State private var isLoading = false
    var body: some View {
        
        VStack {
            BindingTestSwift(isLoading: $isLoading)
            Button {
                isLoading.toggle()
            } label: {
                Text("\(isLoading ? "Start" : "Stop") Loading...")
            }
        }
       
    }
}

#Preview {
    BindingSwift()
}
