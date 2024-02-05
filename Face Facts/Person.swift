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
    
    init(name: String, emailAddress: String, details: String) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
    }
}
