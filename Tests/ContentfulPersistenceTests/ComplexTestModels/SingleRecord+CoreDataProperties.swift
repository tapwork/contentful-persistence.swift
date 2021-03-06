//
//  SingleRecord+CoreDataProperties.swift
//  ContentfulPersistence
//
//  Created by JP Wright on 12.07.17.
//  Copyright © 2017 Contentful GmbH. All rights reserved.
//

import Foundation
import CoreData
import Contentful
import ContentfulPersistence

extension SingleRecord: EntryPersistable {

    static let contentTypeId = "singleRecord"

    @NSManaged var id: String
    @NSManaged var textBody: String?
    @NSManaged var postedDate: Date?
    @NSManaged var createdAt: Date?
    @NSManaged var updatedAt: Date?
    @NSManaged var linkField: Link?

    static func mapping() -> [FieldName: String] {
        return [
            "textBody": "textBody",
            "linkField": "linkField",
            "postedDate": "postedDate"
        ]
    }
}
