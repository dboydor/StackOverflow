//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Libor Huspenina
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    weak var currentController: UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        let controller = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! UIViewController
        addController(controller)
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        let controllerID = sender.selectedSegmentIndex == 0 ? "TableViewController" : "OtherViewController"

        let controller = storyboard?.instantiateViewController(withIdentifier: controllerID) as! UIViewController
        removeController(currentController)
        addController(controller)
    }
    
    func addController(_ controller: UIViewController) {
        
        addChildViewController(controller)
        
        containerView.addSubview(controller.view)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["view" : controller.view])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["view" : controller.view])
        NSLayoutConstraint.activate(constraints)
        
        controller.didMove(toParentViewController: self)
        currentController = controller
    }
    
    func removeController(_ controller: UIViewController?) {
        if let controller = controller {
            controller.view.removeFromSuperview()
            controller.removeFromParentViewController()
            currentController = nil
        }
    }
}

