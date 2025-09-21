//
//  StateObjectSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 22/9/25.
//

import SwiftUI

struct StateObjectSwift: View {
    
//    @Binding var user: User
//    let didTap: (() -> Void)
    
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        VStack {
            TextField("Username",
                      text: $viewModel.user.username,
                      prompt: Text("Username?"))
            SecureField("Password",
                        text: $viewModel.user.password,
                        prompt: Text("Password?"))
            Button {
//                didTap()
                viewModel.login()
            } label: {
                Text("Login")
            }
        }
        .padding(.horizontal, 8)
        .textFieldStyle(.roundedBorder)
        .onChange(of: viewModel.user) { newValue in
            print("The user inputed: \(newValue)")
        }
    }
}

#Preview {
    //StateObjectSwift(user: .constant(.init())) {}
    StateObjectSwift(viewModel: .init())
}
