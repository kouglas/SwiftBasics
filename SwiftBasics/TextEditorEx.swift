//
//  TextEditorEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct TextEditorEx: View {
    @State var textEditorText: String = "This is the starting text"
//    state to save text
    @State var savedText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .colorMultiply(Color.gray)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor info")
        }
    }
}

#Preview {
    TextEditorEx()
}
