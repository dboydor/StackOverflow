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
    
    @IBAction func hideButton(_ button: UIButton) {
        button.removeFromSuperview()
        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseOut, animations: {
            self.stackView.layoutIfNeeded()
        }, completion: nil)
    }

}

