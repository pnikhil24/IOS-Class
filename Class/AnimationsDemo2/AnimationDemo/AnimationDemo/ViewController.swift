//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Porika,Nikhil on 3/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Move all the components outside of the view
        imageOutlet.frame.origin.x = view.frame.maxX;
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
            
              //Move all the components outside of the view
              imageOutlet.frame.origin.x = view.frame.maxX;
            
            
        happyOutlet.frame.origin.x = view.frame.width;
            
        sadOutlet.frame.origin.x = view.frame.width;
            
        angryOutlet.frame.origin.x = view.frame.width;
            
        shakeOutlet.frame.origin.x = view.frame.width;
            
        }

    @IBAction func happyButtonClicked(_ sender: Any) {
        animateImage("happy")
    }
    
    @IBAction func sadButtonClicked(_ sender: Any) {
        animateImage("sad")

    }
    
    @IBAction func angryButtonClicked(_ sender: Any) {
        animateImage("angry")

    }
    
    @IBAction func shakemeButtonClicked(_ sender: Any) {
        
        var w = imageOutlet.frame.width
        w += 40
        
        var h = imageOutlet.frame.height
        h += 40
        
        var x = imageOutlet.frame.origin.x - 20
       
        
        var y = imageOutlet.frame.origin.y - 20
       
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, animations: {
            
            self.imageOutlet.frame = largerFrame
        
        } )
        
    }
    
    @IBAction func showButtonClicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations :{
            
            self.imageOutlet.center.x = self.view.center.x;
            self.happyOutlet.center.x = self.view.center.x;
            self.sadOutlet.center.x = self.view.center.x;
            self.angryOutlet.center.x = self.view.center.x;
            self.shakeOutlet.center.x = self.view.center.x;
            self.showOutlet.isEnabled = false;
        })
       
    } // end showButton
    
    func animateImage(_ imageName: String){
        
        //Image as opaque.
        
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.alpha = 0;
        })
        
        
        UIView.animate(withDuration: 1, delay: 0.2, animations: {
            
            self.imageOutlet.alpha = 1
            self.imageOutlet.image = UIImage(named: imageName)
        })
       
        
    }
    
    
    
    
}

