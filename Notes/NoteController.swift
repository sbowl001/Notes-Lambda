//
//  NoteController.swift
//  Notes
//
//  Created by Stephanie Bowles on 4/30/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation


class NotesController {
    // source of all truths
    
    init() {
        //create Test Data
        createNote(withText: "Walk the dog")
        createNote(withText: "eat lunch")
        createNote(withText: "swift is awesome!")
    }
    private(set) var notes: [Note] = []
    
    func createNote(withText text: String) {
        let note = Note(text: text)
        
        notes.append(note)
    }
}
