//
//  Note.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import Foundation
import SwiftData

@Model
final class Note
{
    @Attribute(.unique) var id : UUID
    var content : String
    var date : Date
    
    init(id: UUID, content: String, date: Date) {
        self.id = id
        self.content = content
        self.date = date
    }
}
