//
//  Sender+CoreDataProperties.swift
//  CoreDataIntro
//
//  Created by Bruno Omella Mainieri on 22/09/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//
//

import Foundation
import CoreData


extension Sender {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Sender> {
        return NSFetchRequest<Sender>(entityName: "Sender")
    }

    @NSManaged public var name: String?
    @NSManaged public var packages: NSSet?

}

// MARK: Generated accessors for packages
extension Sender {

    @objc(addPackagesObject:)
    @NSManaged public func addToPackages(_ value: Package)

    @objc(removePackagesObject:)
    @NSManaged public func removeFromPackages(_ value: Package)

    @objc(addPackages:)
    @NSManaged public func addToPackages(_ values: NSSet)

    @objc(removePackages:)
    @NSManaged public func removeFromPackages(_ values: NSSet)

}
