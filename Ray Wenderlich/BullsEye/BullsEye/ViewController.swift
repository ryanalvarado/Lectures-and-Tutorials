//
//  ViewController.swift
//  BullsEye
//
//  Created by Ryan Alvarado on 2/12/18.
//  Copyright © 2018 Ryan Alvarado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    var targetValue: Int = 0
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        startNewRound()
    }
    // ray wenderlich says he likes to put all his methods underneath viewDidLoad
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of slider is now: \(slider.value)")
    }
    
    
    @IBAction func showAlert() {
        
        var difference: Int = currentValue - targetValue
        if difference < 0 {
            difference = -difference                      
        }
        
        
        let message = "The value of the slider is: \(lroundf(slider.value))" +
        "\nThe target value is: \(targetValue)" +
        "\nThe difference is: \(difference)"
        
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
   

}

