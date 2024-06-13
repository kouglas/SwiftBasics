//
//  ProfileView.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/13/24.
//

import SwiftUI

struct ProfileView: View {
    
    //    app storage
        @AppStorage("name") var currentUserName: String?
        @AppStorage("age") var currentUserAge: Int?
        @AppStorage("gender") var currentUserGender: String?
        @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("Sign Out")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundStyle(.pink)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
