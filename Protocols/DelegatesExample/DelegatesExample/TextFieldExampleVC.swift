//
//  ViewController.swift
//  DelegatesExample
//
//  Created by Bruno Omella Mainieri on 09/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class TextFieldExampleVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var inputTextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        inputTextField2.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == inputTextField{
            print("Text Field 1: Comecei a edição")
        } else {
            print("Text Field 2: Comecei a edição")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == inputTextField{
            print("Text Field 1: Concluí a edição")
        } else {
            print("Text Field 2: Concluí a edição")
        }
    }
}

