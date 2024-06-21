//
//  AnimateWithValueEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/21/24.
//

import SwiftUI

struct AnimateWithValueEx: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false

    
    var body: some View {
        ZStack {
            VStack (spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    animate2.toggle()
                }
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(Color.pink)
            }
        }
        .animation(.spring(), value: animate1)
    }
}

#Preview {
    AnimateWithValueEx()
}
