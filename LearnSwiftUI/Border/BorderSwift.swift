//
//  BorderSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 18/9/25.
//

import SwiftUI

struct BorderSwift: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .padding()
//            .border(.black, width: 5)
//            .cornerRadius(8)
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(.blue, lineWidth: 5)
//            )
        
        Circle()
            .strokeBorder(
                AngularGradient(gradient: Gradient(colors: [.red, .yellow]), center: .center,
                    endAngle: .degrees(360)),
                lineWidth: 50
                               )
            .padding()
            
    }
}

#Preview {
    BorderSwift()
}
