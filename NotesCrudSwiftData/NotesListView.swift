//
//  NotesListView.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import SwiftUI
import SwiftData

struct NotesListView: View {
    
    var notesList : [Note]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        
        List {
            ForEach(notesList, id: \.id) { note in
                NavigationLink(destination: UpdateNoteView(note: note)) {
                    NoteView(note: note)
                }
            }
            .onDelete(perform: deleteNote)
        }
    }
    
    func deleteNote(_ indexSet : IndexSet)
    {
        indexSet.forEach { index in
            let note = notesList[index]
            context.delete(note)
            
            do {
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    NotesListView(notesList: [Note(id: UUID(), content: "example note 1", date: Date.now),
                              Note(id: UUID(), content: "example note 2", date: Date.now),
                              Note(id: UUID(), content: "example note 3", date: Date.now),
                              Note(id: UUID(), content: "example note 4", date: Date.now),
                              Note(id: UUID(), content: "example note 5", date: Date.now)])
}
