//
//  AppManager.swift
//  LocationProject
//
//  Created by hackeru on 30/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import CoreLocation

class AppManager: NSObject {
    
    static let manager = AppManager()
    
    let locationManager : CLLocationManager
    
    override init() {
        locationManager = CLLocationManager()
        super.init()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 25//kCLDistanceFilterNone
        
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            debugPrint("foregroud and background authorized")
        case .authorizedWhenInUse:
            debugPrint("foregroud authorized")
        case .denied, .restricted:
            debugPrint("no auth")
        case .notDetermined:
            //ask permission
            locationManager.requestWhenInUseAuthorization()
            //ask for background too
            //locationManager.requestAlwaysAuthorization()
            //locationManager.allowsBackgroundLocationUpdates = true
        }
        
        locationManager.delegate = self
    }
    
    func startLocation(){
        locationManager.startUpdatingLocation()
    }
    
    func stopLocation(){
        locationManager.stopUpdatingLocation()
    }
    
    
    
}

extension Notification.Name{
    static var locationNotification : Notification.Name{
        get{
            return Notification.Name(rawValue: "new_location")
        }
    }
}

extension AppManager : CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        debugPrint(locations)
        
        NotificationCenter.default.post(name: .locationNotification, object: self)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        debugPrint(error)
    }
}













