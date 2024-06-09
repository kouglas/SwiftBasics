//
//  ModelEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/7/24.
//  structs are custom data types (models)
// when you have any type of data you need custom data points

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct ModelEx: View {
    @State var users: [UserModel] = [
//        "Kari", "Alphonse", "Kermit", "AJ"
        UserModel(displayName: "Kari", userName: "kouglas", followerCount: 500, isVerified: true),
        UserModel(displayName: "Emily", userName: "it'semily", followerCount: 30, isVerified: false),
        UserModel(displayName: "Balfo", userName: "BalfoDaBeast", followerCount: 900, isVerified: false),
        UserModel(displayName: "Alphonse", userName: "fonsiScheme", followerCount: 253, isVerified: true),
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users){
                    user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack (alignment: .leading){
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                            
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    
                }
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Users")
                
            }
        }
    }
}

#Preview {
    ModelEx()
}
