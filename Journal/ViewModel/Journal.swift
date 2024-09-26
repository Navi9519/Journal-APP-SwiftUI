//
//  Journal.swift
//  Journal
//
//  Created by Ivan Dedic on 2024-09-25.
//

import Foundation


class Journal: ObservableObject {
    
 @Published private var entries = [JournalEntry]()
    
   /* init(entries: [JournalEntry] = [JournalEntry]()) {
        self.entries = entries
        
        self.entries.append(JournalEntry(title: "HO", notes: "HOO", date: Date()))
        self.entries.append(JournalEntry(title: "YO", notes: "DOO", date: Date()))
        self.entries.append(JournalEntry(title: "Mo", notes: "KOO", date: Date()))
    }
    
    */
    func getEntries() -> [JournalEntry] {
        
       return entries
    }
    
    func addEntry(entry: JournalEntry) {
        
        entries.append(entry)
        
    }
    
}
