//
//  Package.swift
//  PakTrak
//
//  Created by Bruno Omella Mainieri on 05/08/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import Foundation

public class Package {
    
    var id:Int
    var deliveryDate:Date
    var sender:String
    
    public init(id:Int,date:Date,sender:String){
        self.id = id
        self.deliveryDate = date
        self.sender = sender
    }
    
    //Generates a number of placeholder instances of Package to fill the table
    public static func placeholderData(amount:Int) -> [Package]{
        var packages:[Package] = []
        var senders = ["Amazon","Walmart","Americanas"]
        
        for _ in 0..<amount {
            let senderRng = Int.random(in: 0..<senders.count)
            let dateRng = Int.random(in: -100...100)
            let id = Int.random(in: 143...879)
            packages.append(Package(id: id, date: Date().addingTimeInterval(TimeInterval(dateRng * 86400)), sender: senders[senderRng]))
        }
        
        return packages
    }
    
}
