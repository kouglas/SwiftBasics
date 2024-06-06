//
//  SubViewsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

import SwiftUI

struct SubViewsEx: View {
    let backgroundColor: Color = Color.orange
    
    var body: some View {
        ZStack {
//            background
            backgroundColor.ignoresSafeArea()
        
//            content /foreground
            ContentLayer
        }
    }
    
    var ContentLayer: some View {
        HStack {
            MyItem(title: "apples", count: 1, color: .red)
            MyItem(title: "mangoes", count: 4, color: .pink)
            MyItem(title: "kiwi", count: 2, color: .purple)
        }
    }
    
}

#Preview {
    SubViewsEx()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
