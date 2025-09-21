//
//  PublishedSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 21/9/25.
//

import SwiftUI

struct PublishedSwift: View {
    @StateObject private var viewModel = PeopleViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
                Text("Loading...")
                    .padding()
            } else {
                Text(viewModel.people.isEmpty ? "No User" : "\(viewModel.people.count) users")
            }
            
            Button(action: viewModel.fetchPeople) {
                Text("Fetch some people")
            }
        }
    }
}

#Preview {
    PublishedSwift()
}
