//
//  ViewController.swift
//  Time for a Break!
//
//  Created by Александр Фишер on 04.12.22.
//

import UIKit

class ViewController: UIViewController {
    
    let freeTime = ["Тест": 5, "Минута": 60, "Час": 3600]
    var secondsLeft = 0
    var secondsTotal = 0
    var progressBarCount: Float = 1.0
    var timer = Timer()
    
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var progressBarVIew: UIProgressView!
    @IBAction func pressedSelectedTime(_ sender: UIButton) {
        
        progressBarVIew.progress = 0.0
        timer.invalidate()
        secondsTotal = freeTime[(sender.titleLabel?.text!)!]!
        secondsLeft = 0
        labelView.text = (sender.titleLabel?.text!)!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsLeft < secondsTotal {
            
            progressBarCount = Float(secondsLeft)/Float(secondsTotal)
            progressBarVIew.progress = progressBarCount
            secondsLeft += 1
            
        } else {
            
            progressBarVIew.progress = 1.0
            labelView.text = "За работу!"
            print("end")
            timer.invalidate()
            
        }
    }
    
    
    
    
    
    
    
    
}

