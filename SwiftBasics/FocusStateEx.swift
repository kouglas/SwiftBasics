//
//  FocusStateEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/16/24.
//

import SwiftUI

struct FocusStateEx: View {
    enum OnboardingField: Hashable {
        case username
        case password
    }
//    @FocusState private var userNameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack (spacing: 30){
            TextField("Add your name here", text: $userName)
//                .focused($userNameInFocus)
                .focused($fieldInFocus, equals:  .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here", text: $password)
//                .focused($passwordInFocus)
                .focused($fieldInFocus, equals:  .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
//            Button("toggle focus state") {
//                passwordInFocus.toggle()
//            }
            
            Button("sign up".uppercased()) {
                let userNameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if userNameIsValid && passwordIsValid {
                    print("Sign up".uppercased())
                } else if userNameIsValid {
//                    userNameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                    
                } else {
//                    userNameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                self.userNameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateEx()
}
