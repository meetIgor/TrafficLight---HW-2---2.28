//
//  ViewController.swift
//  TrafficLight - HW #2 - 2.28
//
//  Created by igor s on 19.06.2022.
//

import UIKit



class ViewController: UIViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightON = 1.0
    private let lightOFF = 0.5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        
        redLight.alpha = lightOFF
        yellowLight.alpha = lightOFF
        greenLight.alpha = lightOFF
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = lightON
            greenLight.alpha = lightOFF
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = lightON
            redLight.alpha = lightOFF
            currentLight = .green
        case .green:
            greenLight.alpha = lightON
            yellowLight.alpha = lightOFF
            currentLight = .red
        }
        
        /*
         
        switch startButton.tag {
        case 1:
            redLight.alpha = lightON
            greenLight.alpha = lightOFF
        case 2:
            redLight.alpha = lightOFF
            yellowLight.alpha = lightON
        case 3:
            yellowLight.alpha = lightOFF
            greenLight.alpha = lightON
            startButton.tag = 0
        default:
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = lightON
            startButton.tag = 1
        }
        
        startButton.tag += 1
         */
    }
    
    
}





/*
override func viewDidLayoutSubviews() {
    redLight.layer.cornerRadius = redLight.frame.width / 2
    yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
    greenLight.layer.cornerRadius = greenLight.frame.width / 2
    
    startButton.layer.cornerRadius = 15
}
 */
