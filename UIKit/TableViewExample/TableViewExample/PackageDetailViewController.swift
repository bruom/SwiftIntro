//
//  PackageDetailViewController.swift
//  TableViewExample
//
//  Created by Bruno Omella Mainieri on 10/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class PackageDetailViewController: UIViewController {

    @IBOutlet weak var packageLabel: UILabel!
    
    var package:Package?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let package = package {
            packageLabel.text = "Pacote #\(package.id)"
        }
    }
}
