//
//  ViewController.swift
//  HelloApp
//
//  Created by Porika,Nikhil on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textoutlet: UITextField!
    
    @IBOutlet weak var displayGrade: UITextField!
    @IBOutlet weak var displayLabel : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ButtonClicked(_sender:UIButton){
//Read the text from the text field
        var enteredname = textoutlet.text!
        //Read the Grade Value
       var enterGrade = displayGrade.text!
        //Change the display label to Hello,name!
        displayLabel.text = "Hello,\(enteredname) your Grade is \(enterGrade)"
        
      
        
        
}

}
