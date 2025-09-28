//
//  ControlGroupSwìt.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct ControlGroupSwift: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Quantity")
                    ControlGroup {
                        increaseBtn
                        decreaseBtn
                    }
                }
                
                VStack {
                    Text("Quantity")
                    ControlGroup {
                        increaseBtn
                        decreaseBtn
                    }
                    .controlGroupStyle(.navigation)
                }
                
                ControlGroup {
                    increaseBtn
                    decreaseBtn
                }
                .controlGroupStyle(.quantity)
            }
            .padding()
        }
    }
}

#Preview {
    ControlGroupSwift()
}

private extension ControlGroupSwift {
    
    private var increaseBtn: some View {
        Button {
            
        } label: {
            Label("Increase", systemImage: "plus")
        }
    }
    
    private var decreaseBtn: some View {
        Button {
            
        } label: {
            Label("Decrease", systemImage: "minus")
        }
    }
    
}

