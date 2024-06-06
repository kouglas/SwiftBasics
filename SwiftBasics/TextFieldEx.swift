//
//  TextFieldEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct TextFieldEx: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3)).cornerRadius(10)
                    .foregroundStyle(.red)
                    .font(.headline)
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                    
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                ForEach(dataArray, id: \.self) {
                    data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField info")
            
        }
        
       
    }
    func textIsAppropriate () -> Bool {
        //        check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    func saveText() {
        dataArray.append(textFieldText)
//        clearing the text field after it's saved
        textFieldText = ""
    }
}

#Preview {
    TextFieldEx()
}
