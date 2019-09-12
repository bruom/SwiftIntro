//
//  PriceListing.swift
//  AccessingAPI
//
//  Created by Bruno Omella Mainieri on 11/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import Foundation

class RealTimePrice:Codable{
    var stockList:[PriceListing]?
}

class PriceListing:Codable{
    var symbol:String?
    var price:Float?
}
