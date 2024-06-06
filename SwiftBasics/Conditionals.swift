//
//  Conditionals.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

import SwiftUI

struct Conditionals: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack (spacing: 20) {
            Button("Is loading: \(isLoading.description)", action: {
                isLoading.toggle()
            })
            
            if isLoading {
                ProgressView()
            }
            
            
            
            
//            Button("Circle Button \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectangle.description)"){
//                showRectangle.toggle()
//            }
//            if showCircle {
//                Circle()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//            }
//                
////            } else if showRectangle {
////                Rectangle()
////                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
////            } 
//            if showRectangle {
//                Rectangle()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                
//            }
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            }
//            Spacer()
        }
    }
}

#Preview {
    Conditionals()
}
