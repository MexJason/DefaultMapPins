//
//  ViewController.swift
//  DefaultMapPin
//
//  Created by YouTube on 10/14/22.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    let mapView = MKMapView()
    let coordinate = CLLocationCoordinate2D(latitude: 10.4678, longitude: -84.6427)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureMap()
    }

    private func configureMap() {
        view.addSubview(mapView)
        mapView.frame = view.bounds
        
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        addPins()
    }
    
    private func addPins() {
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 10.1678, longitude: -84.6427)
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: 10.4678, longitude: -84.9427)
        
        
        mapView.addAnnotations([pin, pin2, pin3])
    }
    

}

