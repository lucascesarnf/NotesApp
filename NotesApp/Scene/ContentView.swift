//
//  ContentView.swift
//  NotesApp
//
//  Created by lucas.cesar on 04/08/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var addNoteSheet = false
    var body: some View {
        NavigationView {
            List {
                Text("Sample order")
            }
            .navigationTitle("My Notes")
            .navigationBarItems(trailing: Button(action: {
                addNoteSheet = true
            }, label: {
                Image(systemName: "plus.circle")
                            .imageScale(.large)
            }))
            .sheet(isPresented: $addNoteSheet) {
                    NoteSheet()
            }
        }
    }
    
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
