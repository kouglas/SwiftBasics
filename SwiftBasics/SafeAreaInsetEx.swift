//
//  SafeAreaInsetEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/21/24.
//

import SwiftUI

struct SafeAreaInsetEx: View {
    
    var body: some View {
        NavigationStack {
            List(0..<10) {
                _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe area insets")
//            .overlay(
//            Text("hi")
//                .frame(maxWidth: .infinity)
//                .background(Color.yellow),
//                alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("hi")
                    .padding()
//                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
                
                
            }
            
        }
    }
}

#Preview {
    SafeAreaInsetEx()
}
