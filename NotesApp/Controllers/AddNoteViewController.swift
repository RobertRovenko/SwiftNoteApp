//
//  AddNoteViewController.swift
//  NotesApp
//
//  Created by Robert Falkbäck on 2023-09-07.
//

import UIKit

class AddNoteViewController: UIViewController {

    @IBOutlet weak var SwitchDate: UISwitch!
    
    @IBOutlet weak var TextTitle: UITextField!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var TextNote: UITextView!
    
    var myJournal: Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSwitchDate(_ sender: Any) {
        
        if SwitchDate.isOn{
            
            DatePicker.isHidden = false
            
        }else{
            
            DatePicker.isHidden = true
        }
    }
    
    @IBAction func onSave(_ sender: Any) {
        
        guard let title = TextTitle.text,
            let notes = TextNote.text
             
        else{
            return
        }
        
        let newEntry = JournalEntry(title: title, date: SwitchDate.isOn ? DatePicker.date : Date(), notes: notes)
        
        myJournal?.addEntry(newEntry: newEntry)
        
        self.navigationController?.popViewController(animated: true)
        
       
       // if SwitchDate.isOn{
            
         //   let newEntry = JournalEntry(title: title, date: DatePicker.date, notes: notes)
           // myJournal?.addEntry(newEntry: newEntry)
            
           
        //self.navigationController?.popViewController(animated: true)
            
        //}else{
            
          //  let newEntry = JournalEntry(title: title, date: Date(), notes: notes)
            //myJournal?.addEntry(newEntry: newEntry)
            //self.navigationController?.popViewController(animated: true)
        //}
                
        
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
