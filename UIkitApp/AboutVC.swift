//
//  AboutViewController.swift
//  UIkitApp
//
//  Created by Evgeniy Kuzin on 13.01.2024.
//

import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet var aboutLabel: UILabel!
    
    var label: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !label.isEmpty {
            aboutLabel.text = label
        }
    }
}
