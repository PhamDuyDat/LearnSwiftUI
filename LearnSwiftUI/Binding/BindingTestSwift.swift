//
//  BindingTestSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 21/9/25.
//

import SwiftUI

struct BindingTestSwift: View {
    
    @Binding var isLoading: Bool
    
    var body: some View {
        
        if isLoading {
            Text("hello")
        } else {
            Text("hi")
        }
        
    }
}

// xem trước giao diện
#Preview {
    BindingTestSwift(isLoading: .constant(true))
    //BindingTestSwift(isLoading: .constant(false))
}
