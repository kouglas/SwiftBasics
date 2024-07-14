//
//  CoreLocationView.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 7/14/24.
//

import SwiftUI
import CoreLocation

class LocationViewModel: NSObject, ObservableObject {
    private var locationManager: CLLocationManager?
//    @Published var userLocation: CLLocation
//    @Published var speed: Double = 0.0
    @Published var log: String = ""
    
    init(locationManager: CLLocationManager = CLLocationManager() ) {
        super.init()
        self.locationManager = locationManager
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
}

struct CoreLocationView: View {
    @ObservedObject private var locationViewModel = LocationViewModel()
    var body: some View {
        ZStack {
            VStack {
//                Text(String(format: "Speed: %.2f m/s", locationViewModel.speed))
//                    .padding(30)
//                    .frame(maxWidth: .infinity)
//                    .background(locationViewModel.speed < 1.0 ? .gray: .green)
//                    .foregroundStyle(.white)
//                    .cornerRadius(3.0)
                Text(locationViewModel.log)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .padding()
            
            Group {
                
            }
        }
    }
}

#Preview {
    CoreLocationView()
}


extension LocationViewModel: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .notDetermined:
            log = "Location authorization not determined"
        case .restricted:
            log = "Location authorization restricted"
        case .denied:
            log = "Location authorization denied"
        case .authorizedAlways:
            log = "Location authorization always granted"
        case .authorizedWhenInUse:
            manager.startUpdatingLocation()
            log = "Location authorization when in use granted"
        @unknown default:
            log = "Unknown authorization status"
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locations.forEach{ location in
//            self.speed = location.speed
            
        }
    }
}
