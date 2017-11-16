//
//  ViewController.swift
//  CurrencyConversion
//
//  Created by MacStudent on 2017-11-16.
//  Copyright © 2017 MacStudent. All rights reserved.
//




// Submitted by:
// Paramjeet Kaur     Student Id: C0710778
// Jaspreet Kaur      Student Id: C0709466




import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtfield: UITextField!
    
    
    @IBOutlet weak var eurlbl: UILabel!
    
    @IBOutlet weak var usdlbl: UILabel!
    @IBOutlet weak var lblshowcurrency: UILabel!
     var INR = 0.0
    var USD = 0.0
    var EUR = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        let urlString = "https://api.fixer.io/latest?base=CAD"
        let url = URL(string: urlString)
        
        let task = URLSession.shared.dataTask(with:url!) { (data, response, error) in
            if error != nil {
                print(error)
            } else {
                
                do {
                    // OPTION 1: dictionary
                    let parsedData = try JSONSerialization.jsonObject(with: data!) as! [String:AnyObject]
                    print(parsedData)
                let rates = parsedData["rates"]!
                    print(rates)
                    
                    self.INR = rates["INR"] as! Double
                    print(self.INR)
                    
                    
                    
                   self.USD = rates["USD"] as! Double
                    print(self.USD)
                    
                    
                    self.EUR = rates["EUR"] as! Double
                    print(self.EUR)
                    
       // self.lblshowcurrency.text =  rates["INR"] as? String!
                    
                    
            
                    
                } catch let error as NSError {
                    print(error)
                }
            }
            
        }
        task.resume()
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnconvert(_ sender: UIButton) {
        
        if(self.txtfield.text != "")
        {
            lblshowcurrency.text = String(Double(txtfield.text!)! * INR)
            usdlbl.text = String(Double(txtfield.text!)! * USD)
            eurlbl.text = String(Double(txtfield.text!)! * EUR)
        }
        else {
            txtfield.text = "Enter a value"
        }

    }
    
    
}

