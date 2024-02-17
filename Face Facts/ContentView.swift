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
    
    var body: some View {
        NavigationStack(path: $path) {
            PeopleView()
                .navigationTitle("Face Facts")
                .navigationDestination(for: Person.self) { person in
                    EditPersonView(person: person)
                }
                .toolbar {
                    Button("Add Person", systemImage: "plus", action: addPerson)
                }
        }
    }
    
    func addPerson() {
        let person = Person(name: "", emailAddress: "", details: "")
        modelContext.insert(person)
        path.append(person)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
