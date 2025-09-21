//
//  PeopleViewModel.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 21/9/25.
//

import Foundation

final class PeopleViewModel: ObservableObject {
    @Published var people: [String] = []
    @Published var isLoading: Bool = false
    
    func fetchPeople() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.people = ["Alice", "Bob", "Charlie", "Bob"]
            strongSelf.isLoading = false
        }
    }
}
