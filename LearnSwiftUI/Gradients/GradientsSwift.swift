//
//  GradientsSwìt.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 18/9/25.
//

import SwiftUI

struct GradientsSwift: View {
    var body: some View {
        ZStack {
           //MARK: Gradients
//            LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            
           //MARK: Gradients Stops
//            LinearGradient(stops: ([
//                .init(color: .black, location: 0.2),// từ top đến 20% màn hình
//                .init(color: .blue, location: 0.5)// từ 20% đến hết bottom màn
//            ]), startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
            
            //MARK: Radial Gradients
//            RadialGradient(colors: [.white, .black, .white, .black], center: .center, startRadius: 50, endRadius: 100)// bán kính bên trong là 50 và trải dài ra ngoài đến 100 là lần lượt các màu đc đưa vào
//                .ignoresSafeArea()
            
            //MARK: Angular Gradients
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple], center: .center, angle: .degrees(180))
//                .ignoresSafeArea()
            
                .mask {
                    Text("Xin chào đến với SwiftUI")// mask đưa angular gradients vào trong text
                        .bold()
                        .font(.largeTitle)
                }
            
//            Text("Xin chào đến với SwiftUI")
//                .padding()
//                .background(
//                    AngularGradient(colors: [.white, .black, .white, .black], center: .center, angle: .degrees(180))
//                )
            
        }
    }
}

#Preview {
    GradientsSwift()
}
