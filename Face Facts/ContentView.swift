//
//  ContentView.swift
//  Face Facts
//
//  Created by David Solis on 1/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var path = [Person]()
    @Query var people: [Person]
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(people) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
            }
            .navigationTitle("Face Facts")
            .navigationDestination(for: Person.self) { person in
                Text(person.name)
            }
        }
    }
    
    func addPerson() {
        let person = Person(name: "", emailAddress: "", details: "")
        modelContext.insert(person)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
