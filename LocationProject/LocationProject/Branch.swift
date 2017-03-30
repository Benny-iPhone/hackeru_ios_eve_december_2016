//
//  Branch.swift
//  LocationProject
//
//  Created by hackeru on 30/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class Branch: NSObject {
    let name : String
    let location : CLLocation
    
    init(name : String, lat : CLLocationDegrees, lon : CLLocationDegrees) {
        self.name = name
        self.location = CLLocation(latitude: lat, longitude: lon)
        
        super.init()
    }
    
    class func allBranches() -> [Branch]
    {
        return [
            Branch(name: "Hackeru", lat: 32.0844269, lon: 34.8029073),
            Branch(name: "Dizengof Center", lat: 32.0754815, lon: 34.7779191),
            Branch(name: "100 Gates", lat: 31.7878502, lon: 35.2231438),
            Branch(name: "Haifa Port", lat: 32.8213117, lon: 35.0028918),
            Branch(name: "Igul Bat Yam", lat: 32.0187986, lon: 34.7416921),
            Branch(name: "Sea Mall Eilat", lat: 29.5497922, lon: 34.9561045),
            Branch(name: "Aya Napa", lat: 34.9845909, lon: 33.9991354)
        ]
        
        
    }
}

extension Branch : MKAnnotation{
    var coordinate : CLLocationCoordinate2D{
        get{
            return location.coordinate
        }
    }
    
    var title : String?{
        get{
            return name
        }
    }
}





















