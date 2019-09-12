//
//  ViewController.swift
//  AccessingAPI
//
//  Created by Bruno Omella Mainieri on 11/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class StocksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activ: UIActivityIndicatorView!
    
    var stocks:[PriceListing] = []
    var filteredStocks:[PriceListing] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activ.startAnimating()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        CompanyHandler.listCompanies { (res) in
            self.stocks = res
            self.filteredStocks = res
            DispatchQueue.main.async {
                self.activ.stopAnimating()
                self.tableView.reloadData()
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredStocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "stockCell") as? StockTableViewCell{
            cell.symbolLabel.text = filteredStocks[indexPath.row].symbol
            cell.priceLabel.text = "\(filteredStocks[indexPath.row].price ?? 000.00)"
            return cell
        }
        return UITableViewCell()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchText = searchBar.text, searchText.count > 0 {
            filteredStocks = stocks.filter({ (aStock) -> Bool in
                aStock.symbol?.contains(searchText.uppercased()) ?? false
            })
        } else {
            filteredStocks = stocks
        }
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? CompanyViewController, let ip = tableView.indexPathForSelectedRow{
            dest.companySymbol = filteredStocks[ip.row].symbol
        }
    }
    
}

