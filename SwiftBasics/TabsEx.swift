//
//  TabsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/6/24.
//
// dont forget to add the tags when using selection

import SwiftUI

struct TabsEx: View {
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "person.fill", "house.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self ) {
                icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.green)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 500)
            )
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//            
//        }
    }
}

#Preview {
    TabsEx()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                })
                
            }
            
        }
    }
}
