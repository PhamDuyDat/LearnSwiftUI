//
//  Button+SendStyle.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import Foundation
import SwiftUI

struct SendStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "paperplane")
                .symbolVariant(.fill)
            Divider()
                .padding(.vertical, 8)
            configuration.label
        }
        .frame(maxWidth: 150, minHeight: 55)
        .background(.mint)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
