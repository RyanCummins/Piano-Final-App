//
//  ViewController.swift
//  Piano Final App
//
//  Created by Ryan Cummins on 4/16/18.
//  Copyright © 2018 Ryan Cummins. All rights reserved.

import UIKit
import AVFoundation
class ViewController: UIViewController {
    //////////////Variables//////////////
    var sound = AVAudioPlayer()
    var buttonTapped = Bool()
    
    ///////////Keys as Outlets////////
    
    @IBOutlet weak var FKey: UIButton!
    @IBOutlet weak var GKey: UIButton!
    @IBOutlet weak var AKey: UIButton!
    @IBOutlet weak var BKey: UIButton!
    @IBOutlet weak var CKey: UIButton!
    @IBOutlet weak var DKey: UIButton!
    @IBOutlet weak var EKey: UIButton!
    
    @IBOutlet weak var FKeyLabel: UILabel!
    @IBOutlet weak var GKeyLabel: UILabel!
    @IBOutlet weak var AKeyLabel: UILabel!
    @IBOutlet weak var BKeyLabel: UILabel!
    @IBOutlet weak var CKeyLabel: UILabel!
    @IBOutlet weak var DKeyLabel: UILabel!
    @IBOutlet weak var EKeyLabel: UILabel!
    
    
    @IBOutlet weak var FSharpKey: UIButton!
    @IBOutlet weak var GSharpKey: UIButton!
    @IBOutlet weak var ASharpKey: UIButton!
    @IBOutlet weak var CSharpKey: UIButton!
    @IBOutlet weak var DSharpKey: UIButton!
    
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var octaveSlider: UISlider!
    //////////Override func//////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func buttonPressSix() {
        if let path = Bundle.main.path(forResource: "REAL NOTE Ce", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                sound = try AVAudioPlayer(contentsOf: url)
                sound.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
    @IBAction func octaveSliderAction(_ sender: UISlider) {
        
    }
    
    @IBAction func easyToHard(_ sender: UISegmentedControl) {
        var result: String
        switch segmentedController.selectedSegmentIndex {
        case 0:
            FKeyLabel.text = ""
            GKeyLabel.text = ""
            AKeyLabel.text = ""
            BKeyLabel.text = ""
            CKeyLabel.text = ""
            DKeyLabel.text = ""
            EKeyLabel.text = ""
        case 1:
            FKeyLabel.text = "F"
            GKeyLabel.text = "G"
            AKeyLabel.text = "A"
            BKeyLabel.text = "B"
            CKeyLabel.text = "C"
            DKeyLabel.text = "D"
            EKeyLabel.text = "E"
        default:
            result = ""
        }
    }
    
    
    
    
}

