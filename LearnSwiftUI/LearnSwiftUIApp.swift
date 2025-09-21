//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 18/9/25.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    
    @StateObject private var viewModel = PurchaseViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
            
//            TabView {
//                PurchaseView()
//                    .environmentObject(viewModel)
//                    .tabItem {
//                        Image(systemName: "creditcard")
//                        Text("Purchase")
//                    }
//                
//                PurchaseStateView()
//                    .environmentObject(viewModel)
//                    .tabItem {
//                        Image(systemName: "gear")
//                        Text("State")
//                    }
//            }
        }
    }
}
