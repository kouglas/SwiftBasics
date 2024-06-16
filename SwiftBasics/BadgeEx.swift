//
//  BadgeEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/15/24.
//

import SwiftUI
// can see in list or
// tab view
struct BadgeEx: View {
    var body: some View {
        TabView {
            Color.red.tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge(5)
            Color.green
                .tabItem {
                    Image(systemName: "mail.fill")
                    Text("Goodbye")
                    
                }
            Color.blue
                .tabItem {
                    Image(systemName: "globe")
                    Text("Globe")
                    
                }
        }
            
    }
}

#Preview {
    BadgeEx()
}
