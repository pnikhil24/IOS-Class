//
//  ViewController.swift
//  EvenOddNumber
//
//  Created by Porika,Nikhil on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSubmit(_ sender: Any) {
        
        let inputNumber = Int (enterNumber.text!)
        
        if(inputNumber! % 2 == 0){
            result.text = "\(inputNumber!) is Even Number"
        }
        else
        {
            result.text = "\(inputNumber!) is Odd Number"
        }
        
    }
    
}

