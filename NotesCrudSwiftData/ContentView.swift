//
//  ContentView.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Note.date, order: .reverse) private var notesList: [Note]
    @State var presentNewNoteSheet = false
    
    var body: some View {
        NavigationStack{
            NotesListView(notesList: notesList)
                .padding()
                .navigationTitle("Notes").navigationBarItems(trailing: Button("Add", systemImage: "plus", action: {
                    self.presentNewNoteSheet = true
                }))
        }.sheet(isPresented: self.$presentNewNoteSheet, content: {
            AddNewNote()
        })
    }
}
