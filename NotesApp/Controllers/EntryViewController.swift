//
//  EntryViewController.swift
//  NotesApp
//
//  Created by Robert Falkbäck on 2023-09-11.
//

import UIKit

class EntryViewController: UIViewController {

   
    
    @IBOutlet weak var lblEntryTitle: UILabel!
    @IBOutlet weak var lblEntryDate: UILabel!
    @IBOutlet weak var textEntryContent: UILabel!
    
    var entry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let entry = entry{
            lblEntryTitle.text = entry.title
            lblEntryDate.text = entry.date
            textEntryContent.text = entry.notes
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
