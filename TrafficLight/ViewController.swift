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
        
        scrollingButton.configuration = setUpButton(with: "Start")
        
    }

    
    @IBAction func buttonTapped(by user: UIButton) {
        
        
    }
    
    
    private func setUpButton(with title : String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.910154283, green: 0.4194336236, blue: 0.6157357693, alpha: 1)
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        return buttonConfiguration
    }

}

