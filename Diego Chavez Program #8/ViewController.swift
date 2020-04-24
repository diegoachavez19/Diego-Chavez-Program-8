//
//  ViewController.swift
//  Diego Chavez Program #8
//
//  Created by Diego Chavez on 4/24/20.
//  Copyright © 2020 Diego Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var originalRect: CGRect!
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func foundTap(_ sender: Any) {
        outputLabel.text = "Key 1 Unlocked!"
    }
    
    @IBAction func slideMe(_ sender: Any) {
        outputLabel.text = "Key 2 Unlocked!"
    }
    
    @IBAction func rotation(_ sender: Any) {
    var recognizer: UIRotationGestureRecognizer
    var feedback: String //temporary
    var rotation: CGFloat
            
    recognizer=sender as! UIRotationGestureRecognizer
    rotation=recognizer.rotation
    imageView.transform = CGAffineTransform(rotationAngle: 0.0)
    outputLabel.text = "Key 3 Unlocked, you can escape now!"
    feedback=String(format: "Rotated, Redians: %1.2f, Velocity: %1.2f",
        Float(recognizer.rotation),Float(recognizer.velocity))
    imageView.transform = CGAffineTransform(rotationAngle: rotation)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   becomeFirstResponder()
   
   originalRect=imageView.frame;
   var tempImageView: UIImageView
   tempImageView=UIImageView(image:UIImage(named: "key1.png"))
   tempImageView.frame=originalRect
   view.addSubview(tempImageView)
   self.imageView=tempImageView
    
    }


}

