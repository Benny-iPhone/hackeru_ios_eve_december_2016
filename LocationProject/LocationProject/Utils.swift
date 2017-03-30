//
//  Utils.swift
//  LocationProject
//
//  Created by hackeru on 30/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import Foundation
import CoreLocation

extension Branch{
    func distanceFromCurrentLocation() -> CLLocationDistance?{
        guard let userLoc = AppManager.manager.locationManager.location else{
            return nil
        }
        
        return userLoc.distance(from: self.location)
    }
}






















