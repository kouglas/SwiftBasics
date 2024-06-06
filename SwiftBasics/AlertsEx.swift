//
//  AlertsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct AlertsEx: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    
    enum MyAlerts {
        case success
        case error
    }
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploading"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🤯"
//                    alertMessage = "Your video is now publix"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
    //            Alert(title: Text("There was an error!"))
                getAlert()
                
        })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("OK"), action:{
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error"))
        case nil:
            return Alert(title: Text("Error"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//            title: Text("This is a title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
        
    }
}

#Preview {
    AlertsEx()
}
