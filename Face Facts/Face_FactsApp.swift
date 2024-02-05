//
//  Face_FactsApp.swift
//  Face Facts
//
//  Created by David Solis on 1/22/24.
//

import SwiftUI
import SwiftData

@main
struct Face_FactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
