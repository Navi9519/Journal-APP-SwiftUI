//
//  JournalEntry.swift
//  Journal
//
//  Created by Ivan Dedic on 2024-09-25.
//

import Foundation


struct JournalEntry: Identifiable {
    var id: UUID = UUID()
    var title: String
    var notes: String
    var date: Date
    
    
}
