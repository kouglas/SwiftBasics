//
//  StateProp.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

//tell this view to watch the state of a variables (that change)
import SwiftUI

struct StateProp: View {
    
    @State var backGroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
//            background
            backGroundColor
            
//            content / foreground layer
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack (spacing: 20) {
                    Button("Button #1") {
                        backGroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button #2") {
                        backGroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                    
                }
            }
            .foregroundStyle(.white)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    StateProp()
}
