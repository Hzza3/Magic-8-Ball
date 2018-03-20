//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ahmed Hazzaa  on 1/20/18.
//  Copyright © 2018 Ahmed Hazzaa . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber : Int = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var uiImage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
    }
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        uiImage1.image = UIImage(named : ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
             newBallImage()
        }
    }
}

