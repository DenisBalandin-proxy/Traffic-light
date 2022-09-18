//
//  ViewController.swift
//  Traffic light
//
//  Created by Denis on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var trafficLightStackView: UIStackView!
    @IBOutlet var switchButton: UIButton!
    
    var currentLight: Lights = .red
    
    enum Lights {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchButton.backgroundColor = .blue
        switchButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha  = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.size.width/2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
    }
    @IBAction func switchTheLight() {
        
        switchButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight.alpha = 0.3
            redLight.alpha = 1
        case .yellow:
            currentLight = .green
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case .green:
            currentLight = .red
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    }
}
