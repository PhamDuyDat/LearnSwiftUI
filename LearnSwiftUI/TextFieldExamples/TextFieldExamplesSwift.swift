//
//  TextFieldExamplesSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct TextFieldExamplesSwift: View {
    var body: some View {
        VStack {
            TextField("Name",
                      text: .constant(""),
                      prompt: Text("Enter your name"))
            
            TextField(text: .constant(""),
                      prompt: Text("Enter your password")) {
                Text("password")
            }
            
            SecureField("password",
                        text: .constant(""),
                        prompt: Text("Enter your secure password"))
            
        }
    }
}

#Preview {
    TextFieldExamplesSwift()
}
