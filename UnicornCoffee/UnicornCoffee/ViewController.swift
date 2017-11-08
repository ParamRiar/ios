//
//  ViewController.swift
//  UnicornCoffee
//
//  Created by robin on 2017-11-07.
//  Copyright © 2017 robin. All rights reserved.
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

    
    // outlets
    
    @IBOutlet weak var switchWhippedCream: UISwitch!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var switchChoclate: UISwitch!
    @IBOutlet weak var lblquatity: UILabel!
    
    @IBOutlet weak var txtname: UITextField!
    
    
    // variables
    var x = 0
    
    
    // actions
    @IBAction func btnOrderClicked(_ sender: UIButton) {
         var price = 1
        if (switchWhippedCream.isOn == true && switchChoclate.isOn == true){
            price = 8 * x
            }
        else if (switchWhippedCream.isOn == true){
            price = 6*x
        }
        else if (switchChoclate.isOn == true){
           price =  7*x
        }
        else
        
        {
            price = 5 * x
            }
        let name = txtname.text!
        lblTotal.text = "\(name) pays: \(price)"
    }
    
    @IBAction func btndec(_ sender: UIButton) {
        x = x - 1
        if (x <= 1){
        x = 0
        lblquatity.text = "\(x)"
        }
    }
    
    @IBAction func btninc(_ sender: UIButton) {
        x = x + 1
        lblquatity.text = "\(x)"
        

    }
   
}

