//
//  Frame.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center )
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//            .background(Color.red)
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .top)
            .background(Color.pink)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.orange)
            .frame(height: 400)
            .background(Color.blue)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.cyan)
    }
}

#Preview {
    Frame()
}
