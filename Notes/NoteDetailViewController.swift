//
//  NoteDetailViewController.swift
//  Notes
//
//  Created by Stephanie Bowles on 4/30/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    var note: Note? {
        didSet {
            self.updateView()
        }
    }

    @IBOutlet weak var noteTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    private func updateView() {
        guard let note = self.note, isViewLoaded else {return}
        
        noteTextView.text = note.text
    }

 
}
