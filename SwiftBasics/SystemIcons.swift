//
//  SystemIcons.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
        Image(systemName: "folder.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
//            .font(.caption)
//            .font(.system(size: 200))
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 300)
            .border(Color.red)
//            .clipped()
    }
}

#Preview {
    SystemIcons()
}
