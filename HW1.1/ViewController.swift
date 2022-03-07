//
//  ViewController.swift
//  HW1.1
//
//  Created by Kseniya Ignatyeva on 07.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var controlButton: UIButton!
    
    override func viewDidLoad() {
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 64
        yellowLight.layer.cornerRadius = 64
        greenLight.layer.cornerRadius = 64
        
        controlButton.setTitle("Start", for: .normal)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func controlButtonPressed() {
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        } else {
            controlButton.setTitle("Next", for: .normal)
            redLight.alpha = 1
        }
    }
}

