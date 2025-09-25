//
//  StepperSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct StepperSwift: View {
    
    @State private var quantityExampleOne: Int = 0
    @State private var quantityExampleTwo: Int = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Stepper Example One \(quantityExampleOne)")
                Stepper("Quantity",
                        value: $quantityExampleOne,
                        in: 0...20,
                        step: 1)
            }
            
            VStack {
                Text("Stepper Example One \(quantityExampleTwo)")
                Stepper("",
                        value: $quantityExampleTwo,
                        in: 0...20,
                        step: 1)
                .labelsHidden()
                
            }
            
            VStack {
                
                Stepper(value: $quantityExampleTwo,
                        in: 0...20,
                        step: 1) {
                    Text("Stepper Example One \(quantityExampleTwo)")
                } onEditingChanged: { editingState in
                    print("the editing state is \(editingState) the current value is \(quantityExampleTwo)")
                }
               
            }
        }
    }
}

#Preview {
    StepperSwift()
}
