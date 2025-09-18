//
//  ShapesSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 18/9/25.
//

import SwiftUI

struct ShapesSwift: View {
    var body: some View {
        VStack {
            Capsule(style: .circular)
                .fill(.green)
                .frame(width: 100, height: 50)
            
            Capsule(style: .continuous)
                .frame(width: 100, height: 50)
            
            Circle()
                .frame(width: 50, height: 50)
            
            Ellipse()
                .frame(width: 50, height: 25)
            
            Rectangle()
                .frame(width: 50, height: 50)
              //  .cornerRadius(12)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 50, height: 50)
            
            Image("img_girl")
                .resizable()
                .frame(width: 100, height: 80)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    ShapesSwift()
}
