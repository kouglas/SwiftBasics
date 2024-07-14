//
//  LocationManager.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 7/14/24.
//


import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let manager = CLLocationManager()
    @Published var userLocation: CLLocation?
    static let shared = LocationManager()
    @Published var log: String = ""
    
    override init(){
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
    }
    func requestLocation(){
        manager.requestWhenInUseAuthorization()
    }
}

extension LocationManager: CLLocationManagerDelegate {
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
            
            guard let location = locations.last else { return }
            self.userLocation = location
            
        }
    }
}
