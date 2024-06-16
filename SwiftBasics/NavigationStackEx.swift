//
//  NavigationStackEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/16/24.
//

// easy way for lazy loading
// for navigation

import SwiftUI

struct NavigationStackEx: View {
    
    let fruits = ["apple", "orange", "kiwi"]
    @State private var stackPath: [String] = []
    var body: some View {
        NavigationStack {
            
            ScrollView {
                VStack (spacing: 40) {
                    
                    ForEach(fruits, id: \.self) {
                        fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    ForEach(0..<10) { x in
                        
                        NavigationLink(value: x) {
                            Text("Click me \(x)")
                        }
                        
//                        NavigationLink(destination: {
//                            MySecondScreen(value: 1)
//                        }, label: {
//                            Text("Click me \(x)")
//                        })
                    }
                    
                }
            }
            .navigationTitle("Nav ex")
            .navigationDestination(for: Int.self) {
                value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for:
                    String.self) {
                value in
                Text("Another Screen:\(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackEx()
}
