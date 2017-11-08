//===========================

//===========================

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

    //==============================
    //SUBMITTED BY:
    //PARAMJEET KAUR   C0710778
    //JASPREET KAUR    C0709466
    //==============================
    
    
    // outlets
    
    @IBOutlet weak var coffee: UISwitch!
    @IBOutlet weak var cookie: UISwitch!
    @IBOutlet weak var pizza: UISwitch!
    @IBOutlet weak var totalreward: UILabel!
    
    @IBOutlet weak var reward: UILabel!
    
    
    // variables
     var points = 0
    // actions

    @IBAction func checkrewards(_ sender: UIButton) {
       
        if(coffee.isOn == true && cookie.isOn == true &&
            pizza.isOn == true){
            points = points + 105
        }
        else if(coffee.isOn == true){
            points = points + 10
        }
        else if(cookie.isOn == true){
            points = points + 20
        }
        else if(pizza.isOn == true){
            points = points + 75
        }
        else {
            
        }
        totalreward.text = "\(points)"
    }
    
    @IBAction func btnunicorn(_ sender: UIButton) {
        if (points  >= 25)
        {
           points = points - 25
            totalreward.text = "\(points)"
           reward.text = " Free unicorn coffee "
        }
        else {
            reward.text = "Not enough points"
        }
    }
    @IBAction func btngift(_ sender: UIButton) {
        if (points  >= 100)
        {
            points = points - 100
            totalreward.text = "\(points)"
            reward.text = "You got  gift certificate "
        }
        else {
            reward.text = "Not enough points"
        }
    }
}

