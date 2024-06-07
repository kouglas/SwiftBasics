//
//  Documentation.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/7/24.
//

import SwiftUI

struct Documentation: View {
    
//    MARK: PROPERTIES
    @State var data: [String] = [
        "apple", "banana", "mango"
    ]
    @State var showAlert: Bool = false
    
//    MARK: BODY

//    KARI - Working copy - things to do:
/*
 1) Fix title
 2) Fix alert
 
*/
    
    var body: some View {
        NavigationView { //Start: Nav
            ZStack {
//                backgrounf
                Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
//                foreground
                foreGroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                Button("Alert", action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert")
            })
            }
        }
    }
/// This is the foreground layer that holds a scrollView
    private var foreGroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self){
                name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    //    MARK: FUNCTIONS
    /// Gets an alert with a specified title.
    ///
    /// This functions creates and returns an alert immediately. The alert will have a title
    /// based on the text parameter but it will NOT have a message
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in the Alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
// MARK: PREVIEW

#Preview {
    Documentation()
}
