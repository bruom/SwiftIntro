//
//  PackagesViewController.swift
//  TableViewExample
//
//  Created by Bruno Omella Mainieri on 10/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class PackagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var packageList:[Package] = []
    var delivered:[Package] = []
    var toDeliver:[Package] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        if packageList.count < 1 {
            packageList = Package.placeholderData(amount: 12)
        }
        sortPackages()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        sortPackages()
        tableView.reloadData()
    }
    
    func sortPackages(){
        delivered = []
        toDeliver = []
        _ = packageList.map { (aPackage) -> Void in
            if aPackage.deliveryDate < Date() {
                delivered.append(aPackage)
            } else {
                toDeliver.append(aPackage)
            }
        }
        delivered.sort { (a, b) -> Bool in
            a.deliveryDate < b.deliveryDate
        }
        toDeliver.sort { (a, b) -> Bool in
            a.deliveryDate < b.deliveryDate
        }
    }
    
    //TableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return delivered.count
        } else {
            return toDeliver.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "packageCell", for: indexPath) as? PackageTableViewCell {
            var thisPackage:Package
            if indexPath.section == 0 {
                thisPackage = delivered[indexPath.row]
                cell.packageImageView.image = UIImage(named: "open br")
                let formattedDate = DateFormatter.localizedString(from: thisPackage.deliveryDate, dateStyle: .medium, timeStyle: .none)
                cell.dateLabel.text = "Chegou em \(formattedDate)"
            } else {
                thisPackage = toDeliver[indexPath.row]
                cell.packageImageView.image = UIImage(named: "closed br")
                let formattedDate = DateFormatter.localizedString(from: thisPackage.deliveryDate, dateStyle: .medium, timeStyle: .none)
                cell.dateLabel.text = "Chega em \(formattedDate) (daqui a \(Int(thisPackage.deliveryDate.timeIntervalSinceNow/86400)) dias)"
            }
            cell.packageLabel.text = "Pacote \(thisPackage.id) de \(thisPackage.sender)"
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Encomendas Entregues"
        } else {
            return "Encomendas a Caminho"
        }
    }
    
    //TableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "packageSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                if let dest = segue.destination as? PackageDetailViewController{
                    dest.package = indexPath.section == 0 ? delivered[indexPath.row] : toDeliver[indexPath.row]
                }
            }
        }
        if segue.identifier == "addSegue" {
            if let dest = segue.destination as? CreatePackageTVC {
                dest.prevController = self
            }
        }
    }
    
}

