//
//  CreatePackageTVCTableViewController.swift
//  TableViewExample
//
//  Created by Bruno Omella Mainieri on 10/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class CreatePackageTVC: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var packageName: UITextField!
    
    @IBOutlet weak var senderLabel: UILabel!
    
    @IBOutlet weak var senderPicker: UIPickerView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let senders:[String] = ["Amazon","Walmart","Americanas"]
    
    var pickerExpanded = false
    var dateExpanded = false
    
    weak var prevController:PackagesViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.addTarget(self, action: #selector(setDate), for: .valueChanged)
        senderPicker.delegate = self
        senderPicker.dataSource = self
        senderLabel.text = senders[0]
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .none)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                pickerExpanded = !pickerExpanded
                senderPicker.isHidden = !pickerExpanded
            }
            tableView.beginUpdates()
            tableView.endUpdates()
        }
        if indexPath.section == 2 {
            if indexPath.row == 0 {
                dateExpanded = !dateExpanded
                datePicker.isHidden = !dateExpanded
            }
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            if (indexPath.row == 0 && pickerExpanded) {
                return 244
            } else {
                return 44
            }
        }
        if indexPath.section == 2 {
            if (indexPath.row == 0 && dateExpanded) {
                return 244
            } else {
                return 44
            }
        }
        return 44
    }
    
    @objc func setDate(){
        dateLabel.text = DateFormatter.localizedString(from: datePicker.date, dateStyle: .medium, timeStyle: .none)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return senders[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        senderLabel.text = senders[row]
    }
    
    @IBAction func save(_ sender: Any) {
        guard let idText = packageName.text, let newId = Int(idText), let newSender = senderLabel.text else { return }
        let newPackage = Package(id: newId, date: datePicker.date, sender: newSender)
        if let prevController = prevController {
            prevController.packageList.append(newPackage)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
