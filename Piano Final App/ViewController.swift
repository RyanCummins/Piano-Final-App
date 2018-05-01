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
   /////////Actions Pressed Down////////
    
    @IBAction func FKeyPressedDown(_ sender: UIButton) {
        FKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func GKeyPressedDown(_ sender: UIButton) {
        GKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func AKeyPressedDown(_ sender: UIButton) {
        AKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func BKeyPressedDown(_ sender: UIButton) {
        BKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func CKeyPressedDown(_ sender: UIButton) {
        CKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func DKeyPressedDown(_ sender: UIButton) {
        DKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func EKeyPressedDown(_ sender: UIButton) {
        EKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func FSharpKeyPressedDown(_ sender: UIButton) {
        FSharpKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func GSharpKeyPressedDown(_ sender: UIButton) {
        GSharpKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func ASharpKeyPressedDown(_ sender: UIButton) {
        ASharpKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func CSharpKeyPressedDown(_ sender: UIButton) {
        CSharpKey.backgroundColor = UIColor.cyan
    }
    
    @IBAction func DSharpKeyPressedDown(_ sender: UIButton) {
        DSharpKey.backgroundColor = UIColor.cyan
    }
    
    
  /////////Actions Touched Up//
    
    @IBAction func FKeyLiftUp(_ sender: UIButton) {
        FKey.backgroundColor = UIColor.white
    }
    
    @IBAction func GKeyLiftUp(_ sender: UIButton) {
        GKey.backgroundColor = UIColor.white
    }
    @IBAction func AKeyLiftUp(_ sender: UIButton) {
        AKey.backgroundColor = UIColor.white
    }
    
    @IBAction func BKeyLiftUp(_ sender: UIButton) {
        BKey.backgroundColor = UIColor.white
    }
    
    @IBAction func CKeyLiftUp(_ sender: UIButton) {
        CKey.backgroundColor = UIColor.white
    }
    
    @IBAction func DKeyLiftUp(_ sender: UIButton) {
        DKey.backgroundColor = UIColor.white
    }
    
    @IBAction func EKeyLiftUp(_ sender: UIButton) {
        EKey.backgroundColor = UIColor.white
    }
   
    @IBAction func FSharpKeyLiftUp(_ sender: UIButton) {
        FSharpKey.backgroundColor = UIColor.black
    }
    
    @IBAction func GSharpKeyLiftUp(_ sender: UIButton) {
        GSharpKey.backgroundColor = UIColor.black
    }
    
    @IBAction func ASharpKeyLiftUp(_ sender: UIButton) {
        ASharpKey.backgroundColor = UIColor.black
    }
    
    @IBAction func CSharpKeyLiftUp(_ sender: UIButton) {
        CSharpKey.backgroundColor = UIColor.black
    }
    
    @IBAction func DSharpKeyLiftUp(_ sender: UIButton) {
        DSharpKey.backgroundColor = UIColor.black
    }
    
    
    //////Extra Actions///////
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

