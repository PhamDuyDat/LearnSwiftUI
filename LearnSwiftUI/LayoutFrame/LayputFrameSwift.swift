//
//  LayputFrameSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 19/9/25.
//

import SwiftUI

struct LayputFrameSwift: View {
    var body: some View {
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(.blue)
//        }
//            .frame(width: 300, height: 300,
//                   alignment: .topLeading)
//            .frame(maxWidth: .infinity, maxHeight: 100, alignment: .topLeading)
//            .background(.mint)
//            .clipped()
        
        Image("img_girl")
            .resizable()
            .frame(width: 100, height: 80)
            .clipShape(Circle())
            .overlay(alignment: .bottomTrailing) {
                Text("Hello")
                    .foregroundColor(.white)
                    .bold()
                    .font(.callout)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .offset(x: 25, y: 0)
            }
    }
}

#Preview {
    LayputFrameSwift()
}
