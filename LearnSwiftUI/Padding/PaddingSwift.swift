//
//  PaddingSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct PaddingSwift: View {
    var body: some View {
        VStack {
            Text("Hello Word")
                .padding()
                .border(.red, width: 1)
            
            Text("Hello Word")
                .padding(4)
                .border(.red, width: 1)
            
            Text("Hello Word")
                .padding(.leading, 40)
                .padding(.trailing, 40)
                .border(.red, width: 1)
            
            Text("Hello Word")
                .padding(.horizontal, 40)
                .border(.red, width: 1)
            
            Text("Hello Word")
                .padding(.vertical, 40)
                .border(.red, width: 1)
            
            VStack {
                Image("Filter_1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .border(.red, width: 1)
                
                Text("Hello Word Hello Word Hello Word Hello Word Hello Word Hello Word Hello Word Hello Word ")
                    .frame(maxWidth: 200)
                    .foregroundColor(.white)
                    .border(.red, width: 1)
            }
            //.padding()
            .background(.gray.opacity(0.8))
            .padding()
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .border(.red, width: 1)
        }
    }
}

#Preview {
    PaddingSwift()
}
