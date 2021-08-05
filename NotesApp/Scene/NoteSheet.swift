//
//  NoteSheet.swift
//  NotesApp
//
//  Created by lucas.cesar on 04/08/21.
//

import Foundation
import SwiftUI

struct NoteSheet: View {
    @State var content = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notes")) {
                    TextField("Note description", text: $content)
                        .keyboardType(.twitter)
                }
                
                Button(action: {
                    print("Save Note!")
                }) {
                    Text("Add Note")
                }
            }
                .navigationTitle("Add Note")
        }
    }
}
