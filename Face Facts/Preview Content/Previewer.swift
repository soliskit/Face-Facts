//
//  Previewer.swift
//  Face Facts
//
//  Created by David Solis on 3/1/24.
//

import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person
    
    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)
        event = Event(name: "WWDC", location: "San Francisco")
        person = Person(name: "David Mazza", emailAddress: "mazza@hey.com", details: "", metAt: event)
        container.mainContext.insert(person)
    }
}
