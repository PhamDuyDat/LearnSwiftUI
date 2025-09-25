//
//  ButtonSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct ButtonSwift: View {
    
    @State private var exampleOneCounter: Int = 0
    @State private var exampleTwoCounter: Int = 0
    
    var body: some View {
        
        VStack(spacing: 32) {
            VStack {
                Text("Number of times pressed: \(exampleOneCounter)")
                Button {
                    exampleOneCounter += 1
                } label: {
                    Text("Example 1 Increase")
                }
            }
            
            VStack {
                Text("Number of times pressed: \(exampleTwoCounter)")
                Button(action: increaseExampleTwoCounter) {
                    Text("Example 2 Increase")
                }
            }
            
            Group {
                Button(role:.cancel) {
                    
                } label: {
                    Text("Cancel Example Role")
                }
                
                Button(role:.destructive) {
                    
                } label: {
                    Text("Destructive Role")
                }
                
                Button(role:.none) {
                    
                } label: {
                    Text("Default Role")
                }
            }
            
            Button {
                print("Datttttt")
            } label: {
                Text("Press me")
            }
            .frame(maxWidth: .infinity, minHeight: 44)
            .background(.red)
            .tint(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding()
            
            Button {
                
            } label: {
                Text("send me")
            }
            .buttonStyle(SendStyle())
        }
        
    }
}

#Preview {
    ButtonSwift()
}

private extension ButtonSwift {
    
    func increaseExampleTwoCounter() {
        exampleTwoCounter += 1
    }
}
