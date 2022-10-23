//
//  ViewController.swift
//  TrafficLight
//
//  Created by Arina on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var scrollingButton: UIButton!
    
    let currentAlpha: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = currentAlpha
        yellowLightView.alpha = currentAlpha
        greenLightView.alpha = currentAlpha
        redLightView.layer.cornerRadius = 65
        yellowLightView.layer.cornerRadius = 65
        greenLightView.layer.cornerRadius = 65
        
        scrollingButton.configuration = setUpButton(with: "Start")
        
    }

    
    @IBAction func buttonTapped() {
        
        scrollingButton.setTitle("Next", for: .normal)
        
        if greenLightView.alpha == yellowLightView.alpha {
            greenLightView.alpha = CGFloat(MAXFLOAT)
            redLightView.alpha = currentAlpha
        }
        else if greenLightView.alpha > currentAlpha && yellowLightView.alpha == redLightView.alpha {
            yellowLightView.alpha = CGFloat(MAXFLOAT)
            greenLightView.alpha = currentAlpha
        }
        else if yellowLightView.alpha > currentAlpha && redLightView.alpha == greenLightView.alpha {
            redLightView.alpha = CGFloat(MAXFLOAT)
            yellowLightView.alpha = currentAlpha
        }
         return
    }
    
    
    private func setUpButton(with title : String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = UIColor.blue
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        
        return buttonConfiguration
    }

}

