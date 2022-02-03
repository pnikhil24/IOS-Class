//
//  ViewController.swift
//  Porika_FormatName
//
//  Created by Porika,Nikhil on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
   
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: Any) {
        
        var firstName = firstNameTextField.text!
        var lastName = lastNameTextField.text!
        fullNameLabel.text = "\(firstName) \(lastName)"
        var firstNameInitials = firstName.prefix(1)
        var lastNameInitials = lastName.prefix(1)
        initialsLabel.text = "\(firstNameInitials) \(lastNameInitials)"
        
    }
    
    @IBAction func onClickOfReset(_ sender: Any) {
        firstNameTextField.text = " "
        lastNameTextField.text = " "
        fullNameLabel.text = " "
        initialsLabel.text = " "
        firstNameTextField.becomeFirstResponder()
        
    }
}

