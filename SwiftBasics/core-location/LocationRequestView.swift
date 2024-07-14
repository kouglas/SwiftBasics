//
//  LocationRequestView.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 7/14/24.
//

import SwiftUI

struct LocationRequestView: View {
    
    
/*  TODO:
 1. Make an extension of LocationRequestView and make
a view for each component
 2. Add description markers
 */
    var body: some View {
        ZStack {
            Color(.systemCyan).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Keep up with your case")
                    .font(.system(size: 24, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image(systemName: "location.fill.viewfinder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 32)
                
                Text("Share your location")
                    .multilineTextAlignment(.center)

                    .padding()

                Button{
                    LocationManager.shared.requestLocation()
                } label: {
                    Text("Allow location")
                        .padding()
                        .font(.headline)
                        .foregroundStyle(.cyan)
                }
                .frame(width: UIScreen.main.bounds.width)
                .padding(.horizontal, -32)
                .background(Color.white)
                .clipShape(Capsule())
                .padding()
                
                Button{
                    print("Dismiss location request")
                } label: {
                    Text("Maybe later")
                        .padding()
                        .font(.headline)
            
                }
                
            }
            .padding(.top, 32)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    LocationRequestView()
}
