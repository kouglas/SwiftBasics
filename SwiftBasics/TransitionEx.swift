//
//  TransitionEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

import SwiftUI

struct TransitionEx: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack (alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                    
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
                
            }
        
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionEx()
}
