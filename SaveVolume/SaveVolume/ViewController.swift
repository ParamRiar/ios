//
//  ViewController.swift
//  SaveVolume
//
//  Created by robin on 2017-11-08.
//  Copyright © 2017 robin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    let defaults = UserDefaults.standard
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let y = defaults.float(forKey: "Volumenumber")
        print(y)
        sliderVolume.value = y

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // outlets
    @IBOutlet weak var sliderVolume: UISlider!
    
    //actions
    @IBAction func sliderChanged(_ sender: UISlider) {
        let x = sender.value
 defaults.set(x, forKey: "Volumenumber")
        
    }
   
}

