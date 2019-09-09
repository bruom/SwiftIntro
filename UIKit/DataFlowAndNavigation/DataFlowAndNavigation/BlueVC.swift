//
//  ViewController.swift
//  DataFlowAndNavigation
//
//  Created by Bruno Omella Mainieri on 05/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest:DetailVC = segue.destination as? DetailVC{
            dest.receivedText = inputTextField.text
        }
    }
}

