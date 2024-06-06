//
//  ExtractedFunctions.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor: Color = Color.yellow
    @State var myTitle: String = "My title"
    var body: some View {
        ZStack {
//            background
            backgroundColor.ignoresSafeArea()
            
//            content / foreground
            ContentLayer
            
        }
    }
    var ContentLayer: some View {
        VStack {
            Text(myTitle)
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
        
    }
    func buttonPressed(){
        backgroundColor = .pink
    }
}

#Preview {
    ExtractedFunctions()
}
