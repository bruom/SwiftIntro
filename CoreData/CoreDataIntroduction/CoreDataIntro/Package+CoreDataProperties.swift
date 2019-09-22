//
//  Package+CoreDataProperties.swift
//  CoreDataIntro
//
//  Created by Bruno Omella Mainieri on 22/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//
//

import Foundation
import CoreData


extension Package {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Package> {
        return NSFetchRequest<Package>(entityName: "Package")
    }

    @NSManaged public var id: Int16
    @NSManaged public var deliveryDate: NSDate?
    @NSManaged public var sender: Sender?

}
