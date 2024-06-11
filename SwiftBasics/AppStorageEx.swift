//
//  AppStorageEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/9/24.
//

import SwiftUI

struct AppStorageEx: View {
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()){
                let name: String = "Alphonse"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageEx()
}
