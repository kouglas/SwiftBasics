//
//  ColorPickerEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct ColorPickerEx: View {
    @State var backgroundColor: Color = .purple
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ColorPicker(
                selection: $backgroundColor,
                supportsOpacity: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/,
                label: {
                Text("Select a color")
            })
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
        
    
    }
}

#Preview {
    ColorPickerEx()
}
