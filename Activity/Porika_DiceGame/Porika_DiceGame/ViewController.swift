//
//  ViewController.swift
//  Porika_DiceGame
//
//  Created by Porika,Nikhil on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayappName: UILabel!
    
    @IBOutlet weak var enterPlayer1: UITextField!
    
    
    @IBOutlet weak var enterPlayer2: UITextField!
    
    
    @IBOutlet weak var player1Roll: UILabel!
    
    @IBOutlet weak var player2Roll: UILabel!
    
    @IBOutlet weak var displayResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }

    @IBAction func rollDice(_ sender: Any) {
         let players1 = enterPlayer1.text!
         let players2 = enterPlayer2.text!
        
         displayappName.text = "Dice Game"
         
         let number1 = Int.random(in: 1 ..< 7)
         let number2 = Int.random(in: 1 ..< 7)
         let player_1 = number1
         let player_2 = number2
         player1Roll.text = " \(players1)'s roll is : \(number1)"
         player2Roll.text = " \(players2)'s roll is : \(number2)"
         //displayResult.text = "The Game is tie :"
        if(number1>number2){
            displayResult.text = "\(players1) won the game"
        }else {
            displayResult.text = "\(players2) won the game"
        }
//        else {
//            displayResult.text = "The game is tie"
//        }
        
    }
    
}

