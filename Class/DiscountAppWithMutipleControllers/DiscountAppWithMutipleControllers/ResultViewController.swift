//
//  ResultViewController.swift
//  DiscountAppWithMutipleControllers
//
//  Created by Porika,Nikhil on 4/5/22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var EnteredAmountOutlet: UILabel!

    @IBOutlet weak var EnetredDiscountOutlet: UILabel!
    
    @IBOutlet weak var PriceAfterDiscount: UILabel!
    
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EnteredAmountOutlet.text = EnteredAmountOutlet.text! + amount
                
        EnetredDiscountOutlet.text = EnetredDiscountOutlet.text! + discRate
                
        PriceAfterDiscount.text = PriceAfterDiscount.text! + priceAfterDisc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
