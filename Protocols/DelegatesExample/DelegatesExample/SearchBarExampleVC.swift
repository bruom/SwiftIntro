//
//  SearchBarExampleVC.swift
//  DelegatesExample
//
//  Created by Bruno Omella Mainieri on 09/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class SearchBarExampleVC: UIViewController, UISearchBarDelegate {

    let paises:[String] = ["Brasil","Peru","Colombia","Chile","Portugal","Brunei","Burkina Faso","Canada"]
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var outputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        outputTextView.text = ""
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        outputTextView.text = ""
        guard let filterText = searchBar.text else {
            return
        }
        let paisesFiltrados:[String] = paises.filter { (umPais) -> Bool in
            umPais.contains(filterText)
        }
        for cadaPais in paisesFiltrados {
            outputTextView.text.append("\(cadaPais)\n")
        }
    }

}
