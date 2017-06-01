//
//  ViewController.swift
//  HowlMapKit
//
//  Created by 유명식 on 2017. 6. 1..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapKitView: MKMapView!
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        let location = CLLocationCoordinate2D(latitude: 37.392448, longitude: 126.638831)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Central Park"
        annotation.subtitle = "공원"
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapKitView.setRegion(region, animated: true)
        mapKitView.addAnnotation(annotation)
        
        
        
        locationManager.requestWhenInUseAuthorization()
        mapKitView.showsUserLocation = true
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

