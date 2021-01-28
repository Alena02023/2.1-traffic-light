//
//  ViewController.swift
//  2.1 traffic light
//
//  Created by Елена Лазука on 27.01.2021.
//

import UIKit

    enum CurrentLight {
        case red, yellow, green
    }


class ViewController: UIViewController {

    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!

    @IBOutlet var startButton: UIButton!
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff:CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redLabel.alpha = lightOff
        yellowLabel.alpha = lightOff
        greenLabel.alpha = lightOff
    

        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
    }
    

    @IBAction func presedStartButton() {
        startButton.setTitle("NEXT", for:.normal)
        
        switch currentLight {
        case.red:
            redLabel.alpha = lightOn
            greenLabel.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            redLabel.alpha = lightOff
            yellowLabel.alpha = lightOn
            currentLight = .green
        case .green:
            greenLabel.alpha = lightOn
            yellowLabel.alpha = lightOff
            currentLight = .red
            
        }
    }
}

