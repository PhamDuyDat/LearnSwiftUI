//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 18/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
//        if viewModel.isLoading {
//            ProgressView()
//        } else {
//            if viewModel.isLogin {
//                StateObjectSwift(user: $viewModel.user) {
//                    viewModel.login()
//                }
//            } else {
//                LoggedInView()
//            }
//        }
        
        switch viewModel.currentState {
        case .loading:
            ProgressView()
        case .notLoggedIn:
//            StateObjectSwift(user: $viewModel.user) {
//                               viewModel.login()
//                           }
            StateObjectSwift(viewModel: viewModel)
        case .loggedIn:
//            LoggedInView() {
//                viewModel.logout()
//            }
            LoggedInView(viewModel: viewModel)
        }
        
    }
}

#Preview {
    ContentView()
}
