//
//  IntroView.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/11/24.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
//            background
            RadialGradient(
                gradient: Gradient(colors: [Color.purple, Color.pink]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            /*
             if user is signed in
             profile view
             else
             onboarding
                          */
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            
        }
    }
}

#Preview {
    IntroView()
}
