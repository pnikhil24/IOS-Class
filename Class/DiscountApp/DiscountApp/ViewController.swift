//
//  ViewController.swift
//  DiscountApp
//
//  Created by Porika,Nikhil on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var enterAmount: UITextField!
 
   
    
    @IBOutlet weak var enterPercentage: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSubmit(_ sender: Any) {
        let amount = Double(enterAmount.text!)
        let discount = Double(enterPercentage.text!)
        let total = amount! - (amount!*discount!)/100
        result.text = "Price after dicount \(total)"
        
        
        
        
    }
    
}

