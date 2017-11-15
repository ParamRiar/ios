//
//  ViewController.swift
//  mapapplication
//
//  Created by MacStudent on 2017-11-15.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController , CLLocationManagerDelegate{

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let manager = CLLocationManager()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
        
        mapview.showsUserLocation = true
        let y = manager.location!
        let myLocation = CLLocationCoordinate2DMake(y.coordinate.latitude, y.coordinate.longitude)
        
        let span = MKCoordinateSpanMake(0.09, 0.09)
        
        let region = MKCoordinateRegionMake(myLocation, span)
        
       mapview.setRegion(region, animated: true)
        let pin = MKPointAnnotation()
        pin.coordinate = myLocation
        pin.title = "chandigarh"
        pin.subtitle = " lake "
        mapview.addAnnotation(pin)
        
        
    }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

