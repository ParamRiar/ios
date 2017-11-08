//
//  ViewController.swift
//  classtest
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

    @IBOutlet weak var labelchanged: UILabel!
    
    
    
    @IBAction func btnclick(_ sender: UIButton) {
    labelchanged.text = "GOODBYE"
        
    }

}

