//
//  TabBarView.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

enum ScreenType {
    case one
    case two
}

final class TabRouter: ObservableObject {
    @Published var screenType: ScreenType = .one
    
    func changeScreenType(to screenType: ScreenType) {
        self.screenType = screenType
    }
}

struct TabBarView: View {
    
    @StateObject var router = TabRouter()
    
    var body: some View {
        TabView(selection: $router.screenType) {
                ScreenOne()
                    .badge(10)
                    .tag(ScreenType.one)
                    .environmentObject(router)
                    .tabItem {
                        Label("Screen One", systemImage: "calendar")
                    }
                ScreenTwo()
                    .tag(ScreenType.two)
                    .environmentObject(router)
                    .tabItem {
                        Label("Screen Two", systemImage: "house")
                    }
            }
    }
}

#Preview {
    TabBarView()
}
