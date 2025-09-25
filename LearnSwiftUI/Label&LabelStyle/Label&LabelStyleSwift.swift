//
//  Label&LabelStyleSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct Label_LabelStyleSwift: View {
    var body: some View {
        VStack {
            Label("Pick a Color", systemImage: "paintpalette")
            
            Label("tundsdev thumnail", image: "Filter_1")
            
            Link(destination: .init(string: "https://tundsdev.com")!) {
                Label {
                    Text("Subscribe to the channel")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .clipShape(Capsule())
                } icon: {
                    Image("Filter_1")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .background(.blue)
                        .clipShape(Circle())
                }

            }
            
            Label("tundsdev thumnail", image: "Filter_1")
                .labelStyle(CapsuleStyle())
            
            Label("tundsdev thumnail", image: "Filter_1")
                .labelStyle(StrongCapsuleStyle(color: .red))
            
            Label("tundsdev thumnail", image: "Filter_1")
                .labelStyle(.capsule)
            
            Label("tundsdev thumnail", image: "Filter_1")
                .labelStyle(.StrongCapsule(color: .purple))
            
            Label("tundsdev thumnail", image: "Filter_1")
                .labelStyle(.StrongCapsule(color: .purple))
                .labelStyle(.titleOnly)
                
        }
    }
}

#Preview {
    Label_LabelStyleSwift()
}
