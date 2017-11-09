//
//  ViewController.swift
//  Coredataapp
//
//  Created by MacStudent on 2017-11-09.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//outlets
    
    
    
    
    
    
    //variables
    
    
    
    
    
    //action
    
    @IBAction func btnsave(_ sender: UIButton) {
        // step1
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        //step2
        
        let bueno = NSEntityDescription.insertNewObject(forEntityName: "Person", into: context)
        bueno.setValue("marc", forKey: "name")
        bueno.setValue(45, forKey: "age")
    //step3
        do{
           try context.save()
            print("saved")
            print(bueno)
        }
        catch{
            print("oops, an error occured")
        }
    
    
    }
    
    @IBAction func btnget(_ sender: UIButton) {
        // step1
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        //step2 
        let request = NSFetchRequest<NSFetchRequestResult>(entityName:"Person")
        request.returnsObjectsAsFaults = false
        
        
        //step3
        do{
            let results = try context.fetch(request)
            if(results.count>0){
                for x in results{
                    print(x)
                }
                
            }
            else{
                print("find nothing")
            }
        }
        catch{
            print("oops, an error occured")
        }
    }
    
}

