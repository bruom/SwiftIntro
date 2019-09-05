//
//  ViewController.swift
//  UIKitExample
//
//  Created by Bruno Omella Mainieri on 04/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldLabel: UILabel!
    
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    @IBOutlet weak var segmentedLabel: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func atualizarAction(_ sender: Any) {
        textFieldLabel.text = "O text field contém \(textField.text ?? "nada")"
        switchLabel.text = "O Switch está \(switchOutlet.isOn ? "ligado" : "Desligado")"
        segmentedLabel.text = "A opção \(segmentedOutlet.titleForSegment(at: segmentedOutlet.selectedSegmentIndex) ?? "Um") está selecionada"
        sliderLabel.text = "O Slider está em \(sliderOutlet.value * 100)%"
    }
    
}

