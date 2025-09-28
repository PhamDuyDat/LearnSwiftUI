//
//  ScreenTwo.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct ScreenTwo: View {
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Screen 2")
                    .bold()
                    .foregroundColor(.white)
                
                Button {
                    router.changeScreenType(to: .one)
                } label: {
                    Text("Switch to Screen 1")
                }
            }
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink)
        .clipped()
    }
}

#Preview {
    ScreenTwo()
        .environmentObject(TabRouter())
}
