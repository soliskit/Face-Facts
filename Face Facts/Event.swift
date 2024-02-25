//
//  Event.swift
//  Face Facts
//
//  Created by David Solis on 2/25/24.
//

import SwiftData

@Model
class Event {
    var name: String
    var location: String
    var people: [Person]
    
    init(name: String, location: String, people: [Person] = [Person]()) {
        self.name = name
        self.location = location
        self.people = people
    }
}
