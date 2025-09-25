//
//  Label+CapsuleStyle.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import Foundation
import SwiftUI

struct CapsuleStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

extension LabelStyle where Self == CapsuleStyle {
    static var capsule: CapsuleStyle { .init() }
}

struct StrongCapsuleStyle: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        Label {
            configuration
                .title
                .foregroundStyle(.white)
                .font(.system(size: 15, weight: .bold))
        } icon: {
            configuration.icon
        }
        .padding()
        .background(color)
        .clipShape(Capsule())
        
    }
}

extension LabelStyle where Self == StrongCapsuleStyle {
    static func StrongCapsule(color: Color = .red) -> StrongCapsuleStyle {
        .init(color: color)
    }
}

