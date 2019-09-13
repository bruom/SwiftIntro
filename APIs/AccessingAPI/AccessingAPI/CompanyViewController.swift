//
//  CompanyViewController.swift
//  AccessingAPI
//
//  Created by Bruno Omella Mainieri on 11/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class CompanyViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    @IBOutlet weak var exchangeLabel: UILabel!
    @IBOutlet weak var industry: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var activ: UIActivityIndicatorView!
    
    var companySymbol:String?
    var company:Company?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = companySymbol ?? ""
        nameLabel.text = ""
        priceLabel.text = ""
        changeLabel.text = ""
        exchangeLabel.text = ""
        industry.text = ""
        descLabel.text = ""
        activ.startAnimating()
        CompanyHandler.fetchCompany(symbol: companySymbol ?? "AAPL") { (res) in
            self.company = res
            self.setupLabels()
        }
        
    }
    
    func setupLabels(){
        DispatchQueue.main.async {
            self.activ.stopAnimating()
            if let company = self.company, let prof = company.profile {
                self.navigationItem.title = company.symbol
                self.nameLabel.text = prof.companyName
                self.priceLabel.text = "\(prof.price ?? 000.00)"
                self.changeLabel.text = prof.changesPercentage
                self.exchangeLabel.text = prof.exchange
                self.industry.text = prof.industry
                self.descLabel.text = prof.description
            } else {
                self.nameLabel.text = "Dados da companhia não disponíveis."
            }
        }
    }
}
