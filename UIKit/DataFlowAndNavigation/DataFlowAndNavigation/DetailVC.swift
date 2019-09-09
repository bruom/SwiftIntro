//
//  DetailVC.swift
//  DataFlowAndNavigation
//
//  Created by Bruno Omella Mainieri on 05/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    public var receivedText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let receivedText = receivedText {
            textLabel.text = receivedText
        } else {
            textLabel.text = "Nenhum texto recebido."
        }
    }
}
