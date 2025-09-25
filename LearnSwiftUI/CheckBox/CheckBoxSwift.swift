//
//  CheckBoxSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct CheckBoxSwift: View {
    
    @State private var isSelected: Bool = false
    var body: some View {
        VStack {
            Group {
                Toggle("Turn me on?", isOn: $isSelected)
                Text( isSelected ? "On" : "Off")
            }
            
            Group {
                Toggle("", isOn: $isSelected)
                    .labelsHidden()
                Text( isSelected ? "On" : "Off")
            }
            
            Group {
                Toggle(isOn: $isSelected) {
                    Label(isSelected ? "On" : "Off", systemImage: "lightbulb")
                        .symbolVariant(isSelected ? .fill : .none)
                }
            }
            
            Group {
                Toggle(isOn: $isSelected) {
                    Label(isSelected ? "On" : "Off", systemImage: "lightbulb")
                        .symbolVariant(isSelected ? .fill : .none)
                }
                .toggleStyle(.button)
            }
            
            Group {
                Toggle("", isOn: $isSelected)
                    .labelsHidden()
                    .toggleStyle(ToggleCheckBoxStyle())
                    .font(.title)
            }
        }
    }
}

#Preview {
    CheckBoxSwift()
}
