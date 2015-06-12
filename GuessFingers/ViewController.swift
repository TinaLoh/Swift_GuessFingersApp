//
//  ViewController.swift
//  GuessFingers
//
//  Created by Tina Loh on 6/4/15.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingerInput: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
     
           var guess = fingerInput.text.toInt()
        
        if guess != nil {
            var random = Int(arc4random_uniform(6))
            
            if guess == random {
                result.text = "Correct guess!"
            } else {
                result.text = "No, the answer is \(random)"
            }
            
            fingerInput.text = nil
        } else {
            
            result.text = "Enter number 0 - 5"
        }
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

