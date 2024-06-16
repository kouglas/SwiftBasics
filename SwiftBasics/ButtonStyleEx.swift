//
//  ButtonStyleEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/15/24.
//

import SwiftUI

struct ButtonStyleEx: View {
    var body: some View {
        VStack{
            Button("button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            
            Button("button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
            
            Button("button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.mini)
        }
    }
}

#Preview {
    ButtonStyleEx()
}
