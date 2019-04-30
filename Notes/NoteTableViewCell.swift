//
//  NoteTableViewCell.swift
//  Notes
//
//  Created by Stephanie Bowles on 4/30/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

//Steps
//1. Create Protocol
//2. Weak Var Delegate of protocol type
//3. Call delegate method in ibAction
//4. assign delegate

protocol NoteTableViewCellDelegate: AnyObject {
    func shareNote(for cell: NoteTableViewCell)
}
class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var noteLabel: UILabel!
    
    var note: Note? {
        didSet {
            self.updateView()
            
        }
    }
    
    weak var delegate: NoteTableViewCellDelegate?
    
    private func updateView() {
        guard let note = self.note else {return}
        self.noteLabel.text = note.text
    }
    @IBAction func shareButtonTapped(_ sender: Any) {
        self.delegate?.shareNote(for: self)
    }
    
}
