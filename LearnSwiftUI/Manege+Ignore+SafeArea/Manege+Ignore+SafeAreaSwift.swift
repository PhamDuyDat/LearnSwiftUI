//
//  Manege+Ignore+SafeAreaSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 29/9/25.
//

import SwiftUI

struct Manege_Ignore_SafeAreaSwift: View {
    
    private var gradientColor: [Color] {
        [
            .blue,
            .red
        ]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundVw
                ScrollView {
                    Text("Content")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    TextField("Some TextFeild", text: .constant(""))
                    
                    ForEach(0...15, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial , in: RoundedRectangle(cornerRadius: 8))
                    }
                }
                .foregroundColor(.white)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
            .navigationTitle("Home")
            .ignoresSafeArea(.keyboard, edges: .bottom)
            }
    }
}

#Preview {
    Manege_Ignore_SafeAreaSwift()
}

private extension Manege_Ignore_SafeAreaSwift {
    var backgroundVw: some View {
        LinearGradient(colors: gradientColor, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.container, edges: .bottom)
    }
}
