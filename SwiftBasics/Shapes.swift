//
//  Shapes.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
//       Ellipse()
//       Circle()
//            .fill(Color.pink)
//            .stroke()
//            .stroke(Color.blue, lineWidth: 40)
//            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [30]))
//        below code makes an arch
//            .trim(from: 0.5, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200)
        
    }
}

#Preview {
    Shapes()
}
