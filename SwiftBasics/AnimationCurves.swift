//
//  AnimationCurves.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

import SwiftUI

struct AnimationCurves: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .animation(Animation.spring(response: 1.0, dampingFraction: 0.2, blendDuration: 1.0))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .animation(Animation.easeIn)
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .animation(Animation.easeInOut)
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .animation(Animation.easeOut)
        }
    }
}

#Preview {
    AnimationCurves()
}
