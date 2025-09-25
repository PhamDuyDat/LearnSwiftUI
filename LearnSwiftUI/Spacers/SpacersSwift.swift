//
//  SpacersSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import SwiftUI

struct SpacersSwift: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Name:")
                    .bold()
                Text("Dattt")
            }
            
            HStack {
                Text("Name:")
                    .bold()
                Text("Dattt")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                
                Text("Name:")
                    .bold()
                Text("Dattt")
                Spacer()
            }
            
        }
    }
}

#Preview {
    SpacersSwift()
}
