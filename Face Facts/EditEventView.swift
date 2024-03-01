//
//  EditEventView.swift
//  Face Facts
//
//  Created by David Solis on 2/25/24.
//

import SwiftUI

struct EditEventView: View {
    @Bindable var event: Event
    
    var body: some View {
        Form {
            TextField("Name of event", text: $event.name)
            TextField("Location", text: $event.location)
        }
        .navigationTitle("Edit Event")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        return EditEventView(event: previewer.event)
    } catch {
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}
