//
//  Spacers.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/2/24.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        VStack {
            HStack (spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)
        }
//        HStack (spacing: nil) {
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//        }
//        .background(Color.blue)
    }
}

#Preview {
    Spacers()
}
