//
//  NotesViewController.swift
//  Piano Final App
//
//  Created by Ryan Cummins on 5/16/18.
//  Copyright © 2018 Ryan Cummins. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var pianoListTableView: UITableView!
    var piano: Array<String>?
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
     loadPiano()
    }

    func savePiano(){
        let defaults = UserDefaults.standard
        defaults.set(piano, forKey: "piano")
    }
    func loadPiano(){
        let defaults = UserDefaults.standard
        piano = defaults.array(forKey: "piano") as? Array <String> ?? []
    }
    
    @IBAction func addUnwindSegue (sender: UIStoryboardSegue){
        let viewController = sender.source as? addPianoViewController
        piano?.append(viewController?.getPiano() ?? "")
        pianoListTableView.reloadData()
        savePiano()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(piano?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "CellID")
        tableViewCell?.textLabel?.text = piano?[indexPath.row]
        return tableViewCell!
    }
    
    
    //THIS DELETES ITEMS
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            piano?.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            savePiano()
        }
    }
    

}
