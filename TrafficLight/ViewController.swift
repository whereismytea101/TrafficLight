//
//  ViewController.swift
//  TrafficLight
//
//  Created by Самир Кафаров on 31.07.2022.
//

import UIKit

let currentAlpha: CGFloat = 0.1



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
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        button.setTitle("Next", for: .normal)
    }
    
}

