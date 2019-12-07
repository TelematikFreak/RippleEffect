//
//  ViewController.swift
//  RippleTestNew
//
//  Created by Alexander Moreno Guillén on 7/12/19.
//  Copyright © 2019 Alexander Moreno Guillén. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var select = false
    @IBOutlet weak var selector: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func plusButtonPressed(_ sender: UIButton) {
        let position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        if select {
            view.rippleFill(location: position, color: UIColor.black)
        } else {
            view.rippleBorder(location: position, color: UIColor.black)
        }
    }
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            select = true
        } else {
            select = false
        }
    }
}

