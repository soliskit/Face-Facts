//
//  ContentView.swift
//  Face Facts
//
//  Created by David Solis on 1/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var people: [Person]
    
    var body: some View {
        NavigationStack {
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
}

#Preview {
    ContentView()
}
