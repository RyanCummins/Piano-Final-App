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
    @IBOutlet weak var FKeyLabel: UIView!
    @IBOutlet weak var GKeyLabel: UIView!
    @IBOutlet weak var AKeyLabel: UIView!
    @IBOutlet weak var BKeyLabel: UIView!
    @IBOutlet weak var CKeyLabel: UIView!
    @IBOutlet weak var DKeyLabel: UIView!
    @IBOutlet weak var EKeyLabel: UIView!
    @IBOutlet weak var FSharpKeyLabel: UIView!
    @IBOutlet weak var GSharpKeyLabel: UIView!
    @IBOutlet weak var ASharpKeyLabel: UIView!
    @IBOutlet weak var CSharpKeyLabel: UIView!
    @IBOutlet weak var DSharpKeyLabel: UIView!
    @IBOutlet weak var octaveSlider: UISlider!
    //////////Overrid func//////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    ////////////Touch Functions//////
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        FKeyLabel.backgroundColor = UIColor.cyan
        GKeyLabel.backgroundColor = UIColor.cyan
        AKeyLabel.backgroundColor = UIColor.cyan
        BKeyLabel.backgroundColor = UIColor.cyan
        CKeyLabel.backgroundColor = UIColor.cyan
        DKeyLabel.backgroundColor = UIColor.cyan
        EKeyLabel.backgroundColor = UIColor.cyan
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        FKeyLabel.backgroundColor = UIColor.white
        GKeyLabel.backgroundColor = UIColor.white
        AKeyLabel.backgroundColor = UIColor.white
        BKeyLabel.backgroundColor = UIColor.white
        CKeyLabel.backgroundColor = UIColor.white
        DKeyLabel.backgroundColor = UIColor.white
        EKeyLabel.backgroundColor = UIColor.white
    }
    //////////////Sound Effects/////
    @IBAction func octaveSliderAction(_ sender: UISlider) {
        
    }
    
    @IBAction func soundChanger(_ sender: UISegmentedControl) {
    }
    
   ////////////White Keys///////////
    @IBAction func F(_ sender: UITapGestureRecognizer) {
        FKeyLabel.backgroundColor = UIColor.white
    }
    
    @IBAction func G(_ sender: UITapGestureRecognizer) {
        GKeyLabel.backgroundColor = UIColor.white
    }
    
    @IBAction func A(_ sender: UITapGestureRecognizer) {
        AKeyLabel.backgroundColor = UIColor.white
    }
    
    @IBAction func B(_ sender: UITapGestureRecognizer) {
        BKeyLabel.backgroundColor = UIColor.white
    }
    
    @IBAction func C(_ sender: UITapGestureRecognizer) {
        CKeyLabel.backgroundColor = UIColor.white
        ButtonPressC()
    }
    
    @IBAction func D(_ sender: UITapGestureRecognizer) {
        DKeyLabel.backgroundColor = UIColor.white
    }
    
    @IBAction func E(_ sender: UITapGestureRecognizer) {
        EKeyLabel.backgroundColor = UIColor.white
    }
    
    //////Black Keys////////////////
    @IBAction func FSharpKey(_ sender: UITapGestureRecognizer) {
        FSharpKeyLabel.backgroundColor = UIColor.black
    }
    
    @IBAction func GSharpKey(_ sender: UITapGestureRecognizer) {
        GSharpKeyLabel.backgroundColor = UIColor.black
    }
    
    @IBAction func ASharpKey(_ sender: UITapGestureRecognizer) {
        ASharpKeyLabel.backgroundColor = UIColor.black
    }
    
    @IBAction func CSharpKey(_ sender: UITapGestureRecognizer) {
        CSharpKeyLabel.backgroundColor = UIColor.black
    }
    
    @IBAction func DSharpKey(_ sender: UITapGestureRecognizer) {
        DSharpKeyLabel.backgroundColor = UIColor.black
    }
    /////////Sound Functions////////
    func ButtonPressC() {
        if let path = Bundle.main.path(forResource: "REAL NOTE C", ofType: "mp3") {
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
   ///////////////////////////////////
}

