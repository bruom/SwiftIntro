//
//  University.swift
//  AccessingAPI
//
//  Created by Bruno Omella Mainieri on 11/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import Foundation

class Company:Codable{
    var symbol:String?
    var profile:Profile?
}

class Profile:Codable{
    var price:Float?
    var mktCap:String?
    var changesPercentage:String?
    var companyName:String?
    var exchange:String?
    var industry:String?
    var description:String?
    var image:String?
}
