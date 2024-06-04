//
//  BackGroundAndOverlay.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/1/24.
//

import SwiftUI

struct BackGroundAndOverlay: View {
    var body: some View {
        Image(systemName: "mail.fill")
            .font(.system(size: 40))
            .foregroundColor(.white) 
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
            
            )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
//                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                        ,alignment: .bottomTrailing)
                    )
                
                

                
//        Rectangle()
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(
//                        width: 50,
//                        height: 50),
//                        alignment: .topLeading
//                    
//                )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(
//                        width: 150,
//                        height: 150),
//                        alignment: .bottomTrailing
//                        
//                    )

//        Circle()
//            .fill(Color.pink)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//
//            )
//            .background(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
//                Circle()
//                    .fill(LinearGradient(
//                                            gradient: Gradient(colors: [Color.red, Color.blue]),
//                                            startPoint: .leading,
//                                            endPoint: .trailing
//                                        ))
//                    .frame(
//                        width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
//                        height: 100,
//                        alignment: .center
//                    )
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(
//                        gradient: Gradient(colors: [Color.blue, Color.red]),
//                        startPoint: .leading,
//                        endPoint: .trailing
//                    ))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
            
    }
}

#Preview {
    BackGroundAndOverlay()
}
