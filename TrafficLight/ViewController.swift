//
//  ViewController.swift
//  TrafficLight
//
//  Created by Глеб Романов on 26.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignal.layer.cornerRadius = 50
        yellowSignal.layer.cornerRadius = 50
        greenSignal.layer.cornerRadius = 50
        
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)

        if sender.isTouchInside && redSignal.alpha != 1 && yellowSignal.alpha != 1 || sender.isTouchInside && greenSignal.alpha == 1 {
            redSignal.alpha = 1
            greenSignal.alpha = 0.3
        } else if sender.isTouchInside && redSignal.alpha == 1 {
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
        } else if sender.isTouchInside && yellowSignal.alpha == 1 {
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
        }
    }
}

