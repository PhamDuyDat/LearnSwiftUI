//
//  LoggedInView.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 22/9/25.
//

import SwiftUI

struct LoggedInView: View {
    
    @ObservedObject var viewModel: LoginViewModel
//    let didTap: (() -> Void)
    
    var body: some View {
        VStack {
            Text("Hey, you're now logged in")
            
            Button {
//                didTap()
            } label: {
                Text("Logout")
            }
        }
    }
}

#Preview {
//    LoggedInView() {}
    LoggedInView(viewModel: .init())
}
