//
//   NotesTestData.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import Foundation

struct NotesTestData
{
    static let note1 = Note(id: UUID(), content: "Note 1 content", date: Date())
    static let note2 = Note(id: UUID(), content: "Note 2 content", date: Date())
    static let note3 = Note(id: UUID(), content: "Note 3 content", date: Date())
    
    static func getAllNotes() -> [Note] {
        return [note1, note2, note3]
    }
}
