//
//  UpdateNoteView.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import SwiftUI

struct UpdateNoteView: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @State var note : Note
    
    var body: some View {
        NavigationStack {
            
            Form {
                TextField("Content", text: self.$note.content).padding()
            }.navigationTitle("Update Note").navigationBarItems(trailing: Button("Update")
                                                                 {
                self.updateNote()
            })
        }
    }
    func updateNote()
    {
        
        do {
            try context.save()
            dismiss()
        }catch {
            print(error.localizedDescription)
        }
        
    }
}

