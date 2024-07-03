//
//  NoteView.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import SwiftUI

struct NoteView: View {
    
    @State var note : Note
    var body: some View {
        VStack(alignment: .leading, spacing: 1)
        {
            Text(self.note.date.relativeDate()).font(.caption).foregroundStyle(Color(UIColor.secondaryLabel)).padding(2)
            Text(self.note.content)
        }
    }
}

#Preview {
    NoteView(note: Note(id: UUID(), content: "note content", date: Date.now))
}
extension Date
{
    func relativeDate() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.dateTimeStyle = .named
        
        formatter.unitsStyle = .full
        
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}
