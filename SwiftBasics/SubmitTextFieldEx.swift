//
//  SubmitTextFieldEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/16/24.
//

import SwiftUI

struct SubmitTextFieldEx: View {
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $text)
//            .submitLabel(.route)
//            .onSubmit {
////                print("Something to the console ")
//            }
    }
}

#Preview {
    SubmitTextFieldEx()
}
