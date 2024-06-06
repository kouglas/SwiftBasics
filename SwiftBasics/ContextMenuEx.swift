//
//  ContextMenuEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct ContextMenuEx: View {
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack (alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Helpful info")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .green
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Text("Report Post")
            })
            Button(action: {
                backgroundColor = .red
            }, label: {
                HStack {
                    Text("Like Post ")
                    Image(systemName: "heart.fill")
                }
            })
        }))
    }
}

#Preview {
    ContextMenuEx()
}
