//
//  GroupBoxSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct GroupBoxSwift: View {
    var body: some View {
        
        VStack {
            
            GroupBox("Save Items") {
                Text("You've saved 10 items")
            }
            
            GroupBox {
                Text("You've saved 10 items")
            } label: {
                Label("Saved Items", systemImage: "star")
                    .symbolVariant(.fill)
            }
            
            GroupBox {
                Text("You've saved 10 items")
            } label: {
                Label("Saved Items", systemImage: "star")
                    .symbolVariant(.fill)
            }
            .groupBoxStyle(.saved)
            
        }
        .padding()
        .background(.mint)
        
    }
}

#Preview {
    GroupBoxSwift()
}
