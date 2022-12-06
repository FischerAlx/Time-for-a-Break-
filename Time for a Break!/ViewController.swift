//
//  ViewController.swift
//  Time for a Break!
//
//  Created by Александр Фишер on 04.12.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func pressedSelectedTime(_ sender: UIButton) {
        if sender.currentTitle != nil {
            print(sender.currentTitle)
        } else {
            print("nilllll((((")
        }
    }
    
    
    
    
    
}

