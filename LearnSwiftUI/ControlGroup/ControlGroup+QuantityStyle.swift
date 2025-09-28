//
//  ControlGroup+QuantityStyle.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 29/9/25.
//

import Foundation
import SwiftUI

struct ControlGroupQuantityStyle: ControlGroupStyle {

    func makeBody(configuration: Configuration) -> some View {
        
        VStack(alignment: .leading) {
            Label("Quantity", systemImage: "bag")
                .font(.body.weight(.bold))
            HStack {
                configuration.content
            }
        }
        
    }
    
}

extension ControlGroupStyle where Self == ControlGroupQuantityStyle {
    static var quantity: ControlGroupQuantityStyle { .init() }
}
