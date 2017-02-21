//
//  ViewController.swift
//  AutocompleteProject
//
//  Created by Benny Davidovitz on 20/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import GooglePlaces
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func selectAddressAction(_ sender: Any) {
        
        let controller = GMSAutocompleteViewController()
        controller.delegate = self
        self.navigationController?.pushViewController(controller, animated: true)
    }

}

extension ViewController : GMSAutocompleteViewControllerDelegate{
    
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        
        var str = place.name
        if let address = place.formattedAddress{
            str += " " + address
        }
        
        label.text = str
        
        _ = navigationController?.popViewController(animated: true)
        
        //clear all previous
        mapView.removeAnnotations(mapView.annotations)
        //add new
        let ann = MKPointAnnotation()
        ann.coordinate = place.coordinate
        mapView.addAnnotation(ann)
        
        //zoom
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: place.coordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        print(error)
        _ = navigationController?.popViewController(animated: true)

    }
    
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        _ = navigationController?.popViewController(animated: true)

    }
    
}















