//
//  CoreLocationView.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 7/14/24.
//

import SwiftUI

struct CoreLocationView: View {
    @ObservedObject private var locationManager = LocationManager.shared
    var body: some View {
        Group {
            if locationManager.userLocation == nil {
                LocationRequestView()
            } else if let location =  locationManager.userLocation {
//                so when there is a location, send it to the next view
                Text("\(location)")
            }
        }
    }
}

#Preview {
    CoreLocationView()
}
