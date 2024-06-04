//
//  Images.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("profile")
            .resizable()
//            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .cornerRadius(150)
            .clipShape(
                 /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
//                .RoundedRectangle()
            )
    }
}

#Preview {
    Images()
}
