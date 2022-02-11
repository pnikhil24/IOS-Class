//
//  ViewController.swift
//  Porika_Calculator
//
//  Created by Porika,Nikhil on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DisplayLabel: UILabel!
        @IBOutlet weak var AC: UIButton!
        @IBOutlet weak var C: UIButton!
        @IBOutlet weak var Back: UIButton!
        @IBOutlet weak var Division: UIButton!
        @IBOutlet weak var S7: UIButton!
        @IBOutlet weak var E8: UIButton!
        @IBOutlet weak var N9: UIButton!
        @IBOutlet weak var F4: UIButton!
        @IBOutlet weak var F5: UIButton!
        @IBOutlet weak var S6: UIButton!
        @IBOutlet weak var O1: UIButton!
        @IBOutlet weak var T2: UIButton!
        @IBOutlet weak var T3: UIButton!
        @IBOutlet weak var Z0: UIButton!
        @IBOutlet weak var DOT: UIButton!
        @IBOutlet weak var Equal: UIButton!
        @IBOutlet weak var Plus: UIButton!
        @IBOutlet weak var Minus: UIButton!
        @IBOutlet weak var Multiple: UIButton!
        @IBOutlet weak var Remain: UIButton!
        
        var workings:String = ""
        override func viewDidLoad() {
            super.viewDidLoad()
            clearAll()
            // Do any additional setup after loading the view.
        }
        func clearAll(){
            workings = ""
            DisplayLabel.text = ""
        }
        

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
    
    @IBAction func Button2(_ sender: Any) {
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
    
    @IBAction func Button3(_ sender: Any) {
    }
    
    @IBAction func Button4(_ sender: Any) {
    }
    
    @IBAction func Button5(_ sender: Any) {
    }
    
    @IBAction func Button6(_ sender: Any) {
    }
    
    @IBAction func Button7(_ sender: Any) {
    }
    
    @IBAction func Button8(_ sender: Any) {
    }
    
    
    @IBAction func Button9(_ sender: Any) {
    }
    
    @IBAction func ButtonMinus(_ sender: Any) {
    }
    
    @IBAction func ButtonMultiply(_ sender: Any) {
    }
    
    @IBAction func ButtonDivide(_ sender: Any) {
    }
    
    
    @IBAction func ButtonPercentage(_ sender: Any) {
    }
    
    @IBAction func ButtonPeriod(_ sender: Any) {
    }
    
    @IBAction func ButtonOnOff(_ sender: Any) {
        clearAll()
    }
    
    
    @IBAction func ButtonEquals(_ sender: Any) {
        if(validInput())
                      {
                          let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                          let expression = NSExpression(format: checkedWorkingsForPercent)
                          let result = expression.expressionValue(with: nil, context: nil) as! Double
                          let resultString = formatResult(result: result)
                          DisplayLabel.text = resultString
                      }
                      else
                      {
                          let alert = UIAlertController(
                              title: "Invalid Input",
                              message: "Calculator unable to do math based on input",
                              preferredStyle: .alert)
                          alert.addAction(UIAlertAction(title: "Okay", style: .default))
                          self.present(alert, animated: true, completion: nil)
                      }
          }
          func validInput() ->Bool
              {
                  var count = 0
                  var funcCharIndexes = [Int]()
                  
                  for char in workings
                  {
                      if(specialCharacter(char: char))
                      {
                          funcCharIndexes.append(count)
                      }
                      count += 1
                  }
                  
                  var previous: Int = -1
                  
                  for index in funcCharIndexes
                  {
                      if(index == 0)
                      {
                          return false
                      }
                      
                      if(index == workings.count - 1)
                      {
                          return false
                      }
                      
                      if (previous != -1)
                      {
                          if(index - previous == 1)
                          {
                              return false
                          }
                      }
                      previous = index
                  }
                  
                  return true
              }
          func specialCharacter (char: Character) -> Bool
              {
                  if(char == "*")
                  {
                      return true
                  }
                  if(char == "/")
                  {
                      return true
                  }
                  if(char == "+")
                  {
                      return true
                  }
                  return false
              }
              
              func formatResult(result: Double) -> String
              {
                  if(result.truncatingRemainder(dividingBy: 1) == 0)
                  {
                      return String(format: "%.0f", result)
                  }
                  else
                  {
                      return String(format: "%.2f", result)
                  }
              }
    }
    
    
    @IBAction func ButtonClear(_ sender: Any) {
        
        clearAll()
    
    }
}

