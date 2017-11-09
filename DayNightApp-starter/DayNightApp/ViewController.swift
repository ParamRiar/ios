//
//  ViewController.swift
//  DayNightApp
// Submitted By:
//Paramjeet kaur C0710778
//Jaspreet Kaur C0709466
//Tarun Taneja C0705314
//
//  Created by robin on 2017-11-08.
//  Copyright © 2017 robin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    // variables
   let defaults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let y = defaults.bool( forKey: "switch")
        print(y)
        switchUnicornMode.isOn = y
        if(switchUnicornMode.isOn == false){
            
            doGhostMode()
            
            
        }
        else if (switchUnicornMode.isOn == true){
            
            doUnicornMode()
            
        }
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // outlets
    @IBOutlet var viewMain: UIView!
    @IBOutlet weak var imgGhost: UIImageView!
    @IBOutlet weak var imgStar: UIImageView!
    @IBOutlet weak var imgUnicorn: UIImageView!
    @IBOutlet weak var imgRainbow: UIImageView!
    @IBOutlet weak var lblUnicornMode: UILabel!
    @IBOutlet weak var lblPreferences: UILabel!
    @IBOutlet weak var switchUnicornMode: UISwitch!
    
    // actions
    @IBAction func switchUnicornMode(_ sender: UISwitch) {
        

        if(switchUnicornMode.isOn == false){
           
            doGhostMode()
            
      
        }
        else if (switchUnicornMode.isOn == true){
           
             doUnicornMode()
            
        }

         defaults.set(sender.isOn, forKey: "switch")
    }
    
    // functions
    func doGhostMode() {
        // This function makes the app become GHOST MODE!
        viewMain.backgroundColor = #colorLiteral(red: 0.1977773836, green: 0.04566380802, blue: 0.4567139911, alpha: 1)
        imgRainbow.isHidden = true
        imgUnicorn.isHidden = true
        imgGhost.isHidden = false
        imgStar.isHidden = false
    }

    func doUnicornMode() {
        // This function makes the app become UNICORN MODE!
        viewMain.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        imgGhost.isHidden = true
        imgStar.isHidden = true
        imgUnicorn.isHidden = false
        imgRainbow.isHidden = false
    }
}

