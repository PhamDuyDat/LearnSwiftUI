//
//  ButtonStyle+MaterialsSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct ButtonStyle_MaterialsSwift: View {
    var body: some View {
        ScrollView {
            VStack {
                
                Button("Dattt dep trai") {}
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Button("Dattt dep trai") {}
                    .tint(.red)
                    .buttonStyle(.borderedProminent)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .controlSize(.large)
                
                VStack(spacing: 20) {
                    Text("Dattttt sieu dep trai")
                        .bold()
                    
                    Button("Dattt dep trai") {}
                        .tint(.mint)
                        .buttonStyle(.borderedProminent)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.mint)
                        .buttonStyle(.bordered)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.mint)
                        .buttonStyle(.borderless)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.mint)
                        .buttonStyle(.plain)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.mint)
                        .buttonStyle(.automatic)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .controlSize(.large)
                    
                }
                
                VStack(spacing: 20) {
                    Text("Dattttt sieu dep trai")
                        .bold()
                    
                    Button("Dattt dep trai") {}
                        .tint(.teal)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 8))
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.teal)
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.teal)
                        .buttonStyle(.borderless)
                        .buttonBorderShape(.capsule)
                        .controlSize(.large)
                    
                    Button("Dattt dep trai") {}
                        .tint(.teal)
                        .buttonStyle(.plain)
                        .buttonBorderShape(.automatic)
                        .controlSize(.large)
               
                }
            }
        }
    }
}

#Preview {
    ButtonStyle_MaterialsSwift()
}
