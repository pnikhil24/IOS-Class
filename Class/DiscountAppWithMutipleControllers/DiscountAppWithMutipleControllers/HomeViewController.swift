//
//  ViewController.swift
//  DiscountAppWithMutipleControllers
//
//  Created by Porika,Nikhil on 4/5/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    
    var priceAfterDicount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calcDiscountPressed(_ sender: Any) {
        
        var amount = Double(AmountOutlet.text!)
        var dicountRate = Double(DiscountOutlet.text!)
        
        priceAfterDicount = amount! - (amount!*dicountRate!/100)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        if transition == "ResultSegue"{
       
            var destination = segue.destination as! ResultViewController
                        
destination.amount = AmountOutlet.text!
destination.discRate = DiscountOutlet.text!
destination.priceAfterDisc = String(priceAfterDicount)

        }
    
    
    
    }
}

