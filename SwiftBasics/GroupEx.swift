//
//  GroupEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/21/24.
//

import SwiftUI

struct GroupEx: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello world")
            
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
           

        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupEx()
}
