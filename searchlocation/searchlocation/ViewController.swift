//
//  ViewController.swift
//  searchlocation
//
//  Created by MacStudent on 2017-11-15.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController , CLLocationManagerDelegate{

    @IBOutlet weak var mapview: MKMapView!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func searchbtnloc(_ sender: UIButton) {
        //let manager = CLLocationManager()
        //manager.delegate = self
        //manager.requestWhenInUseAuthorization()
        let x  = textfield.text!
        print(x)
        let searchRequest = MKLocalSearchRequest()
        
        searchRequest.naturalLanguageQuery = x
        let req = MKLocalSearch(request: searchRequest)
        req.start { (response, error) in
            if response == nil {
                print("No result found!")
            }
            else{
                print(response)
                for item in response{
                    
                }
            }
            let lat = response?.boundingRegion.center.latitude
                let long = response?.boundingRegion.center.longitude
                 let myLocation = CLLocationCoordinate2DMake(lat!, long!)
                let span = MKCoordinateSpanMake(0.09, 0.09)
                
                let region = MKCoordinateRegionMake(myLocation, span)
                
              self.mapview.setRegion(region, animated: true)
                
            }
            
        }
       
    }
    


