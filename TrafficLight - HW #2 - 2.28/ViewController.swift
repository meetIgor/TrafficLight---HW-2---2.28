//
//  ViewController.swift
//  TrafficLight - HW #2 - 2.28
//
//  Created by igor s on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private let lightON = 1.0
    private let lightOFF = 0.5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        startButton.layer.cornerRadius = 15
        
        
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
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
