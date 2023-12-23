//
//  ViewController.swift
//  UIkitApp
//
//  Created by Evgeniy Kuzin on 23.12.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var showGreeteingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
    }

    
    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        showGreeteingButton.setTitle (
            greetingLabel.isHidden ? "спрятать" : "показать снова",
            for: .normal
        )
    }
}

