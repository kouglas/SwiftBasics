//
//  SheetsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//
//  transition from one screen to another
import SwiftUI

struct SheetsEx: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//             one sheet per view dont add any conditional logic in sheet modifiers
//            can also use fullScreenCover instead of sheet to make the sheet fill the entire screen
//            must dismiss fullScreenCover with a button
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
//    method used for dismissing screens
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // removing a screen with a button instead of the default of swiping down
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
            })
        }
    }
}

#Preview {
    SheetsEx()
//    SecondScreen()
}
