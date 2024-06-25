//
//  NavigationSplitViewEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/25/24.
//

import SwiftUI

struct NavigationSplitViewEx: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory){
                category in
                
                NavigationLink(category.rawValue.capitalized, value: category)
            }
//            first view is the sidebar
//            List {
//                ForEach(FoodCategory.allCases, id: \.hashValue){
//                    category in
//                    Button(category.rawValue.capitalized) {
//                        selectedCategory = category
//                    }
//                }
//            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit){
                            fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                            
                        }
                        
                    case .vegetables:
                        EmptyView()
                    case .fungi:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin")
            }
        }  detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue.capitalized)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select a category to begin")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewEx()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, fungi
}

enum Fruit: String, CaseIterable {
    case apple, banana, orange
}
