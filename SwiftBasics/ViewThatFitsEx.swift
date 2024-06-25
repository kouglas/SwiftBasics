//
//  ViewThatFitsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/25/24.
//

import SwiftUI

struct ViewThatFitsEx: View {
    var body: some View {
        ZStack {
            Color.purple.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ViewThatFits {
                Text("This is some text that I would like to display to the user")
                Text("This is some text that I would like to display")
                Text("This is some text ")
            }
            
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsEx()
}
