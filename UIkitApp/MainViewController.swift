//
//  ViewController.swift
//  UIkitApp
//
//  Created by Evgeniy Kuzin on 23.12.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var topButton: UIButton!
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var showGreeteingButton: UIButton!
    @IBOutlet var switcher: UISwitch!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutVC = segue.destination as? AboutVC else { return }
        aboutVC.label = textField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
   
    @IBAction func topButtonPressed() {
        view.endEditing(true)
            greetingLabel.text = textField.text
    }
        
    @IBAction func switcherChange() {
        if switcher.isOn {
            showGreeteingButton.setTitle("другое дело", for: .normal)
        }
    }

    @IBAction func greetingButtonTapped() {
        if switcher.isOn {
            greetingLabel.isHidden.toggle()
            
            showGreeteingButton.setTitle (
                !greetingLabel.isHidden ? "спрятать" : "показать снова",
                for: .normal
            )
        } else {
            showGreeteingButton.setTitle ("включите тумблер", for: .normal)
        }
    }
}

