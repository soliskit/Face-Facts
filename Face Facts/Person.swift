//
//  Person.swift
//  Face Facts
//
//  Created by David Solis on 1/22/24.
//

import SwiftData

@Model
class Person {
    var name: String
    var emailAddress: String
    var details: String
    var metAt: Event?
    
    init(name: String, emailAddress: String, details: String, metAt: Event? = nil) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
        self.metAt = metAt
    }
}
