//
//  Toggle+CheckBoxStyle.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 26/9/25.
//

import Foundation
import SwiftUI

struct ToggleCheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
        .tint(.black)
    }
}
