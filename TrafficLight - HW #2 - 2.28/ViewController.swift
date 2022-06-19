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
    
    
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        startButton.layer.cornerRadius = 15
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
        
        
        /*
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        startButton.layer.cornerRadius = 15
         */
    
    }
    
    var activeLight = ""
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {

        if startButton.currentTitle == "START" {
            activeLight = "red"
        }
        
        startButton.setTitle("NEXT", for: .normal)

        switch activeLight {
        case "red":
            redLight.alpha = 1
            greenLight.alpha = 0.5
            activeLight = "yellow"
        case "yellow":
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            activeLight = "green"
        case "green":
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
            activeLight = "red"
        default:
            activeLight = "red"
        }
        
        
        
        /*
        switch startButton.tag {
        case 1:
            redLight.alpha = 1
            greenLight.alpha = 0.5
        case 2:
            redLight.alpha = 0.5
            yellowLight.alpha = 1
        case 3:
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
            startButton.tag = 0
        default:
            startButton.tag = 0
        }
         */
        
    }
    
    
}

