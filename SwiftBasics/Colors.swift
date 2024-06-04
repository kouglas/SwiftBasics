//
//  Colors.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0.5, green: 0.3, blue: 0.1, alpha: 0.1))
//
                Color("CustomColor")
            )
            .frame(width:300, height: 200)
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .shadow(color: Color.red, radius: 10)
        
    }
}

#Preview {
    Colors()
}
