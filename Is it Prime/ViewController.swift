//
//  ViewController.swift
//  Is it Prime
//
//  Created by Jesus Lopez de Nava on 7/3/15.
//  Copyright (c) 2015 LodenaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var userNumber: UITextField!
    
    @IBOutlet var resultImage: UIImageView!
    
    @IBAction func textFieldAction(sender: AnyObject) {
    
        resultLabel.text = nil
        
        resultImage.image = nil
        
    }
    
    @IBAction func primeButtin(sender: AnyObject) {
        
        if let number = Int(userNumber.text!) {
        
              var isPrime = true
        
              if number < 2 {
        
                  isPrime = false
        
              }
        
              if number > 2 {
        
                  for var counter = 2; counter < number; counter++ {
        
                     if number % counter == 0 {
        
                         isPrime = false
                      }
                    
                  }
                
              }
        
              if isPrime {
        
                   resultLabel.text = "\(number) is a Prime Number"
                
                   let imageName = UIImage(named: "correct.jpg")
                   resultImage.image = imageName
        
              } else {
        
                   resultLabel.text = "\(number) is not a Prime Number"
                
                   let imageName = UIImage(named: "wrong.jpg")
                   resultImage.image = imageName
              }
            
            self.view.endEditing(true)
        
           } else {
        
               resultLabel.text = "Please enter a whole number"
    
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
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }

}

