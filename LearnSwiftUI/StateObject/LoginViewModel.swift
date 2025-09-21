//
//  LoginViewModel.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 22/9/25.
//

import Foundation

struct User: Equatable {
    var username: String = ""
    var password: String = ""
    
    mutating func reset() {
        username = ""
        password = ""
    }
}

final class LoginViewModel: ObservableObject {
    
    enum CurrentState {
        case loading
        case notLoggedIn
        case loggedIn
    }
    
    @Published var user: User = .init()
    @Published var currentState: CurrentState = .notLoggedIn
//    @Published var isLoading: Bool = false
//    @Published var isLogin: Bool = false
    
    func login() {
        guard !user.username.isEmpty && !user.password.isEmpty else {
            return
        }
        
        currentState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let strongSelf = self else {return}
            strongSelf.currentState = .loggedIn
        }
    }
    
    func logout() {
        self.currentState = .notLoggedIn
        self.user.reset()
    }
    
    
}
