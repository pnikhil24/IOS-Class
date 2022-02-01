//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Porika,Nikhil on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var operand1:Double = -1.1;
    var operand2:Double = -1.1;
    var calcOperator:Character = " "
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button1(_ sender: Any) {
        
        displayLabel.text = displayLabel.text! + "1"
        if(operand1 == -1.1){
            operand1 = 1
        }else{
            operand2 = 1
        }
    }
    
    @IBAction func Buttton2(_ sender: Any) {
        
        displayLabel.text = displayLabel.text! + "2"
        if(operand2 == -1.1){
            operand2 = 2
        }else{
            operand1 = 2
        }
    }
    
    @IBAction func ButtonPlus(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "+"
        if calcOperator == " " {
            calcOperator = "+"
        }
        
    }
    
    
    @IBAction func ButtonEquals(_ sender: Any) {
        displayLabel.text =  displayLabel.text! + "="
        if calcOperator == "+" {
            displayLabel.text = displayLabel.text! + "\(operand1+operand2)"
        }else if calcOperator == "*"{
                displayLabel.text = displayLabel.text! + "\(operand1*operand2)"
            
        }
    }
    
    
    @IBAction func ButtonMultiply(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "*"
        if calcOperator == " "{
            calcOperator = "*"
        }
        
    }
    
    @IBAction func ButtonReset(_ sender: Any) {
        operand1 = -1.1;
        operand2 = -1.1;
        calcOperator = " "
        displayLabel.text = " ";
    }
    
}

 
