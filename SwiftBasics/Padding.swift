//
//  Padding.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/2/24.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack  (alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 20)
            Text("This is the desciiption of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                
        }
        .padding()
        .padding(.vertical, 30)
        .background(Color.white
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        )
        .padding(.horizontal, 10)
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
//            .background(Color.red)
//            .padding(.leading, 20)
//            .background(Color.yellow)
//            .padding()
//            .background(Color.blue)

    }
}

#Preview {
    Padding()
}
