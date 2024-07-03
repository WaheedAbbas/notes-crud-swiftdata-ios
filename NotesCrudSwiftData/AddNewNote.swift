//
//  AddNewNote.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import SwiftUI

struct AddNewNote: View {
    
    @State var noteContent : String = ""
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            
            Form {
                TextField("Content", text: self.$noteContent).padding()
            }.navigationTitle("Add new Note").navigationBarItems(trailing: Button("Done")
                                                                 {
                self.addNewNote()
            })
        }
    }
    func addNewNote()
    {
        if noteContent.isEmpty { return }
        
        let newNote = Note(id: UUID(), content: self.noteContent, date: Date.now)
        context.insert(newNote)
        
        do {
            try context.save()
            dismiss()
        }catch {
            print(error.localizedDescription)
        }
        
    }
}

#Preview {
    AddNewNote()
}
