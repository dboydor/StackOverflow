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
    
    fileprivate var payees: [Payee] {
        var retVal = [Payee]()
        retVal.append(Payee(payee: "Pepa"))
        retVal.append(Payee(payee: "Kodl"))
        retVal.append(Payee(payee: "Igec"))
        retVal.append(Payee(payee: "Zdenal"))
        retVal.append(Payee(payee: "Pavka"))
        return retVal
    }
    
    fileprivate var operators: [Operator] {
        var retVal = [Operator]()
        retVal.append(Operator(name: "Vodaphone"))
        retVal.append(Operator(name: "O2"))
        retVal.append(Operator(name: "T-Mobile"))
        return retVal
    }
    
    @IBAction func openOperators(_ sender: AnyObject) {
        let controller = PickerViewController<Operator>(style: .plain)
        controller.items = operators
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func openPayees(_ sender: AnyObject) {
        let controller = PickerViewController<Payee>(style: .plain)
        controller.items = payees
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

