//
//  BreakingDownStateAndDataFlowSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 21/9/25.
//

import SwiftUI

struct BreakingDownStateAndDataFlowSwift: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundColor(isOn ? .yellow : .black)
            
            Toggle(isOn: $isOn) {
                Text("Toggle is light Switch")
            }
            .labelsHidden()
        }
    }
}

#Preview {
    BreakingDownStateAndDataFlowSwift()
}
