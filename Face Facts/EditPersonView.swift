//
//  EditPersonView.swift
//  Face Facts
//
//  Created by David Solis on 1/22/24.
//

import SwiftUI

struct EditPersonView: View {
   @Bindable var person: Person
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                TextField("Email Address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            Section("Notes") {
                TextField("Details", text: $person.details, axis: .vertical)
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}
