//
//  addPianoViewController.swift
//  Piano Final App
//
//  Created by Ryan Cummins on 5/16/18.
//  Copyright © 2018 Ryan Cummins. All rights reserved.
//

import UIKit

class addPianoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var addPianoNoteTextField: UITextField!
    
    func getPiano() -> String {
        return addPianoNoteTextField.text!
    }
}
