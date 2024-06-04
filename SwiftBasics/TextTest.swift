//
//  TextTest.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 5/29/24.
//

import SwiftUI

struct TextTest: View {
    var body: some View {
        Text("Hello, World! This is Sunday the first day of June and it's been raining here in the city. The weather should be more sunny tomorrow.")
//            .font(.body)
////            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: Color.blue)
//            .italic()
//            .strikethrough(true, color: Color.yellow)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(50.0)
//            .kerning(10)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.leading)
            
        
    }
}

#Preview {
    TextTest()
}
