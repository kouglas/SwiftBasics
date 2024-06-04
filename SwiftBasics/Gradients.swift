//
//  Gradients.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue, Color.orange]),
//                    startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
//                    endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
//            )
                RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .leading,
                    startRadius: 5,
                    endRadius: 400)
                )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    Gradients()
}
