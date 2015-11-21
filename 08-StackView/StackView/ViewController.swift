//
//  ViewController.swift
//  StackView
//
//  Created by Libor Huspenina on 21/11/2015.
//  Copyright © 2015 Cleverlance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func hideButton(button: UIButton) {
        button.removeFromSuperview()
        UIView.animateWithDuration(0.3, delay: 0.1, options: .CurveEaseOut, animations: {
            self.stackView.layoutIfNeeded()
        }, completion: nil)
    }

}

