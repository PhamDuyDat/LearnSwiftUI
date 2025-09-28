//
//  ScreenOne.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct ScreenOne: View {
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ZStack {
            VStack {
                Text("Screen 1")
                    .bold()
                    .foregroundColor(.white)
                
                Button {
                    router.changeScreenType(to: .two)
                } label: {
                    Text("Switch to Screen 2")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.mint)
        .clipped()
    }
}

#Preview {
    ScreenOne()
        .environmentObject(TabRouter())
}
