//
//  ToolBarEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/17/24.
//

import SwiftUI

struct ToolBarEx: View {
    var body: some View {               NavigationStack {
            ZStack{
                Color.purple
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Hey")
                    .foregroundStyle(.white)
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(leading:
//            Image(systemName: "heart.fill"),
//            trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .bottomBar ){
                    Image(systemName: "gear")
                }
                
            }
        }
        
    }
}

#Preview {
    ToolBarEx()
}
