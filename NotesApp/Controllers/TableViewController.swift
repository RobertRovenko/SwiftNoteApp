//
//  TableViewController.swift
//  NotesApp
//
//  Created by Robert Falkbäck on 2023-09-07.
//

import UIKit

class TableViewController: UITableViewController {
    
    let NOTE_ID = "JournalCell"
    let SEGUE_TO_ADD = "SegueToAdd"
    let SEGUETOENTRY = "NoteSegue"
    
    let myJournal = Journal()
    
    @IBOutlet var MyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        MyTableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myJournal.getEntriesCount()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NOTE_ID, for: indexPath)

        var content = cell.defaultContentConfiguration()
        
        let entry = myJournal.getEntry(atIndex: indexPath.row)
        
        content.text = "\(entry.date) \(entry.title)"
        cell.contentConfiguration = content
        
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == SEGUE_TO_ADD {
            
            if let destinationVC = segue.destination as? AddNoteViewController{
                destinationVC.myJournal = self.myJournal
            }
            return
            
        }
        
        if segue.identifier == SEGUETOENTRY{
            
            if let destinationVC = segue.destination as? EntryViewController{
                
                if let cell = sender as? UITableViewCell{
                    
                    if let indexPath = MyTableView.indexPath(for: cell){
                        let entry = myJournal.getEntry(atIndex: indexPath.row)
                        destinationVC.entry = entry
                    }
                    
                }
                
            }
        }
          //  guard let destinationVC = segue.destination as? EntryViewController else{return}
            //guard let cell = sender as? UITableViewCell else {return}
            //guard let indexPath = MyTableView.indexPath(for: cell) else {
              //  return
            }
            //let entry = myJournal.getEntry(atIndex: indexPath.row)
            //destinationVC.entry = entry
        
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    

}
