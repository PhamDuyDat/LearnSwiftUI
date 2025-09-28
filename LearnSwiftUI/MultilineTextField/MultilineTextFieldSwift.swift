//
//  MultilineTextFieldSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct MultilineTextFieldSwift: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            descriptionVw
            textEditorVw
            submitBtnVw
        }
            .padding()
    }
}

#Preview {
    MultilineTextFieldSwift()
}

private extension MultilineTextFieldSwift {
    
    var textEditorVw: some View {
        TextEditor(text: $text)
            .frame(height: 250)
            .overlay (
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.2), lineWidth: 4)
            )
    }
    
    var descriptionVw: some View {
        Text("Description")
    }
    
    var submitBtnVw: some View {
        Button {
            print("The user inputted: \(text)")
        } label: {
            
            Text("Submit")
        }
    }
}
