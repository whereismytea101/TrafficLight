//
//  ViewController.swift
//  TrafficLight
//
//  Created by Самир Кафаров on 31.07.2022.
//

import UIKit

private let lightsOff: CGFloat = 0.3
private let lightsOn: CGFloat = 1


class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 20
        
        redView.alpha = lightsOff
        yellowView.alpha = lightsOff
        greenView.alpha = lightsOff
        
        print("Размер стороны, доступный в методе viewDidLoad: \(redView.frame.height)")
    }
    
    override func viewWillLayoutSubviews() {
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        print("Размер стороны, доступный в методе viewWillLayoutSubviews: \(redView.frame.height)")
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        button.setTitle("Next", for: .normal)
        
        if redView.alpha == 1 {
            redView.alpha = lightsOff
            yellowView.alpha = lightsOn
        } else if yellowView.alpha == 1 {
            yellowView.alpha = lightsOff
            greenView.alpha = lightsOn
        } else if greenView.alpha == 1 {
            greenView.alpha = lightsOff
            redView.alpha = lightsOn
        } else {
            redView.alpha = lightsOn
        }
        
//        Мое решение
        
//        if redView.alpha == yellowView.alpha {
//            redView.alpha = CGFloat(MAXFLOAT)
//            greenView.alpha = currentAlpha
//        } else if redView.alpha > currentAlpha && yellowView.alpha == greenView.alpha {
//            yellowView.alpha = CGFloat(MAXFLOAT)
//            redView.alpha = currentAlpha
//        } else if yellowView.alpha > currentAlpha && greenView.alpha == redView.alpha {
//            greenView.alpha = CGFloat(MAXFLOAT)
//            yellowView.alpha = currentAlpha
//        }
    }
    
}

