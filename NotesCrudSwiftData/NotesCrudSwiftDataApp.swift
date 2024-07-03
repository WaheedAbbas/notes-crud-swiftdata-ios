//
//  NotesCrudSwiftDataApp.swift
//  NotesCrudSwiftData
//
//  Created by Waheed Abbas on 03/07/2024.
//

import SwiftUI
import SwiftData

@main
struct NotesCrudSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: [Note.self])
    }
}
