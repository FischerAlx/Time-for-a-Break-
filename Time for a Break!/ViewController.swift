//
//  ViewController.swift
//  Time for a Break!
//
//  Created by Александр Фишер on 04.12.22.
//

import UIKit

class ViewController: UIViewController {
    
    let freeTime = ["Тест": 5, "Минута": 60, "Час": 3600]
    var secondsLeft = 5
    var timer = Timer()
    
    @IBOutlet weak var progressBarVIew: UIProgressView!
    @IBAction func pressedSelectedTime(_ sender: UIButton) {
        
        timer.invalidate()
        secondsLeft = freeTime[(sender.titleLabel?.text!)!]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
        @objc func updateTimer() {
            var progressBarCount: Float = 1.0
            if secondsLeft > 0 {
                
                //print("\(secondsLeft) seconds")
                progressBarCount = Float(1/secondsLeft)
                progressBarVIew.progress = progressBarCount
                secondsLeft -= 1
                
            } else {
                print("end")
            }
        }
        
        
    
    
    
    
    
    
}

