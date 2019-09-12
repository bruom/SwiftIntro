//
//  CompanyHandler.swift
//  AccessingAPI
//
//  Created by Bruno Omella Mainieri on 11/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import Foundation

class CompanyHandler{
    
    static func listCompanies(completion: @escaping ([PriceListing]) -> ()){
        if let url:URL = URL(string: "https://financialmodelingprep.com/api/v3/stock/real-time-price"){
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    if let queriedData = data{
                        if let stockList:RealTimePrice = try? JSONDecoder().decode(RealTimePrice.self, from: queriedData){
                            if let res = stockList.stockList{
                                completion(res)
                            }
                        }
                    }
                } else {
                    print(error?.localizedDescription ?? "Erro ao listar companhias")
                }
                }.resume()
        }
    }
    
    static func fetchCompany(symbol:String, completion: @escaping (Company) -> ()){
        if let url:URL = URL(string: "https://financialmodelingprep.com/api/v3/company/profile/\(symbol)"){
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    if let queriedData = data{
                        if let res:Company = try? JSONDecoder().decode(Company.self, from: queriedData){
                            completion(res)
                        }
                    }
                } else {
                    print(error?.localizedDescription ?? "Erro ao buscar \(symbol)")
                }
                }.resume()
        }
    }
}
