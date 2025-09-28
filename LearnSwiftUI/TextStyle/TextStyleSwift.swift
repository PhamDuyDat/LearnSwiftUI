//
//  TextStyleSwift.swift
//  LearnSwiftUI
//
//  Created by Phạm Duy Đạt on 28/9/25.
//

import SwiftUI

struct TextStyleSwift: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .bold()
            .italic()
            .underline(true, color: .red)
        
        Text("My text here")
            .foregroundColor(.mint)
            .font(.largeTitle.weight(.black))
        
        Text("My text here")
            .foregroundColor(.blue)
            .font(.system(size: 18, weight: .semibold, design: .rounded))
        
        Text(.now, style: .timer)
        Text(.now, style: .time)
        Text(.now, style: .date)
        
        Text(Date.now, format: Date.FormatStyle(date: .abbreviated, time: .shortened))
        
        Text(72.3, format: .currency(code: "GBP"))
        Text(72.3, format: .currency(code: "USD"))
        
        Text(Date.now...Date.now.addingTimeInterval(3600))
    }
}

#Preview {
    TextStyleSwift()
}
