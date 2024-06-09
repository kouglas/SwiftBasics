//
//  IfLetGuard.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/7/24.
// safely unwrapping optionals (optional values)
// if let statements && guard let statements

import SwiftUI

struct IfLetGuard: View {
    @State var currentUserId: String? = "user001"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        NavigationView {
            VStack{
                Text("Here we are practicing safe coding!")
                
                /*
                 if there is a real value in displayText
                 create a new variable called text and then
                 execute the code in the closure
                 */
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
//                do not user ! ever
//                do not force unwrap values
//                Text(displayText!)
//                    .font(title)
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe coding!!")
            .onAppear {
                loadData2()
                
            }
        }
        
    }
    func loadData() {
        /*
         if there is a value in currentUserId then make
         a new variable called userID and execute the
         code inside the closure
         */
        if let userID = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data!! userId is: \(userID)"
                isLoading = false
            }
            
        } else {
            displayText = "Error there is no user ID !"
        }
        
    
    }
    func loadData2(){
        /*
         if there is a value inside of currentUserID
         then create a variable called userID and run the code
         under the first closure otherwise
         if there is no value in currentUserID then execute
         the code inside the first function (an error)
         */
        guard let userID = currentUserId else {
            displayText = "Error there is no user ID !"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data!! userId is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuard()
}
