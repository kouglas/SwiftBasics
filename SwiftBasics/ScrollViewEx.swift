//
//  ScrollViewEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/2/24.
//

import SwiftUI

struct ScrollViewEx: View {
    
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0..<10) {
                    index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: { 
                        LazyHStack {
                        ForEach(0..<100) {
                            index in
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .fill(Color.white)
                                .frame(width: 200, height: 150)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                    }})

                }
            }
        }
        }
}

#Preview {
    ScrollViewEx()
}
