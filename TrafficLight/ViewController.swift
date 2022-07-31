//
//  ViewController.swift
//  TrafficLight
//
//  Created by Самир Кафаров on 31.07.2022.
//

import UIKit

let currentAlpha: CGFloat = 0.3


class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = currentAlpha
        yellowView.alpha = currentAlpha
        greenView.alpha = currentAlpha
        button.layer.cornerRadius = 20
        
        redView.layer.cornerRadius = 64
        yellowView.layer.cornerRadius = 64
        greenView.layer.cornerRadius = 64
        

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        button.setTitle("Next", for: .normal)
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = CGFloat(MAXFLOAT)
            greenView.alpha = currentAlpha
        } else if redView.alpha > currentAlpha && yellowView.alpha == greenView.alpha {
            yellowView.alpha = CGFloat(MAXFLOAT)
            redView.alpha = currentAlpha
        } else if yellowView.alpha > currentAlpha && greenView.alpha == redView.alpha {
            greenView.alpha = CGFloat(MAXFLOAT)
            yellowView.alpha = currentAlpha
        }
    }
    
}

