//
//  BackgroundMaterialsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/13/24.
//

import SwiftUI

struct BackgroundMaterialsEx: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(30)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(
            Image("profile")
        )
    }
}

#Preview {
    BackgroundMaterialsEx()
}
