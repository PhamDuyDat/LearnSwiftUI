//
//  BackgroundandOverlaySwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 29/9/25.
//

import SwiftUI

struct BackgroundandOverlaySwift: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(.yellow)
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.white)
                            .font(.system(size: 32))
                            .offset(y: -2)
                            
                    }
                    .background(.yellow)
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background {
                        Circle()
                            .fill(.yellow.opacity(0.3))
                        
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                            
                    }
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background {
                        
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                        
                        Circle()
                            .fill(.mint)
                            
                    }
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(alignment: .top) {
                        
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                            
                    }
                
                Image("Filter_1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .background(
                        Circle()
                            .fill(.blue)
                    )
                    .overlay(alignment: .bottom) {
                        Text("Datt")
                            .font(.footnote.weight(.bold))
                            .foregroundColor(.white)
                            .padding(4)
                            .background(
                                Capsule()
                                    .fill(.red)
                            )
                    }
                    
            }
        }
    }
}

#Preview {
    BackgroundandOverlaySwift()
}
