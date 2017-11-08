//
//  ViewController.swift
//  CommonUIControl
//
//  Created by MacStudent on 2017-11-07.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnClicked(_ sender: UIButton) {
        print ("HELLO")
        print("GOOD BYE")
        
        
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if (sender.isOn == true){
            print("HELLO!")
        }
        else {
            print("GOODBYE!")
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        let x = sender.text!
        print(x)
        
    }
    
}

