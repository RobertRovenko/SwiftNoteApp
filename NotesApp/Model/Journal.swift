//
//  Journal.swift
//  NotesApp
//
//  Created by Robert Falkbäck on 2023-09-07.
//

import Foundation

class Journal{
    
    private var entries: [JournalEntry]
    
    init(){
        self.entries = [JournalEntry(title: "Add your own notes!", date: Date(), notes: "Create your own notes and explore the app!")]
    }
    
    func getEntriesCount() -> Int{
        return entries.count
    }
    
    func getEntry(atIndex index: Int) -> JournalEntry{
        
        return entries[index]
        
    }
    
    func addEntry(newEntry: JournalEntry) {
        
        entries.append(newEntry)
        
    }
    
}
