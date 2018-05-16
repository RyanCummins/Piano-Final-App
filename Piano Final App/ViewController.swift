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
   var F = AVAudioPlayer()
    var FSharp = AVAudioPlayer()
    var G = AVAudioPlayer()
    var GSharp = AVAudioPlayer()
    var A = AVAudioPlayer()
    var ASharp = AVAudioPlayer()
    var B = AVAudioPlayer()
    var C = AVAudioPlayer()
    var CSharp = AVAudioPlayer()
    var D = AVAudioPlayer()
    var DSharp = AVAudioPlayer()
    var E = AVAudioPlayer()
    var metranome = AVAudioPlayer()
    var buttonTapped = Bool()
    
    ///////////Keys as Outlets////////
    
    @IBOutlet weak var FKey: UIButton!
    @IBOutlet weak var GKey: UIButton!
    @IBOutlet weak var AKey: UIButton!
    @IBOutlet weak var BKey: UIButton!
    @IBOutlet weak var CKey: UIButton!
    @IBOutlet weak var DKey: UIButton!
    @IBOutlet weak var EKey: UIButton!
    
    @IBOutlet weak var FSharpKey: UIButton!
    @IBOutlet weak var GSharpKey: UIButton!
    @IBOutlet weak var ASharpKey: UIButton!
    @IBOutlet weak var CSharpKey: UIButton!
    @IBOutlet weak var DSharpKey: UIButton!
    
    
    @IBOutlet weak var FKeyLabel: UILabel!
    @IBOutlet weak var GKeyLabel: UILabel!
    @IBOutlet weak var AKeyLabel: UILabel!
    @IBOutlet weak var BKeyLabel: UILabel!
    @IBOutlet weak var CKeyLabel: UILabel!
    @IBOutlet weak var DKeyLabel: UILabel!
    @IBOutlet weak var EKeyLabel: UILabel!
    
    
    @IBOutlet weak var octaveSlider: UISlider!
    
    /////Keys Touch Down/////
    

    @IBAction func FKeyTouchDown(_ sender: UIButton) {
        FKey.backgroundColor = UIColor.cyan
        buttonPressF()
    }
    
    @IBAction func GKeyTouchDown(_ sender: UIButton) {
        GKey.backgroundColor = UIColor.cyan
        buttonPressG()
    }
    
    @IBAction func AKeyTouchDown(_ sender: UIButton) {
        AKey.backgroundColor = UIColor.cyan
        buttonPressA()
    }
    
    @IBAction func BKeyTouchDown(_ sender: UIButton) {
        BKey.backgroundColor = UIColor.cyan
        buttonPressB()
    }
    
    
    @IBAction func CKeyTouchDown(_ sender: UIButton) {
        CKey.backgroundColor = UIColor.cyan
        buttonPressC()
    }
    
    
 
    @IBAction func DKeyTouchDown(_ sender: UIButton) {
        DKey.backgroundColor = UIColor.cyan
        buttonPressD()
    }
  
    @IBAction func EKeyTouchDown(_ sender: UIButton) {
        EKey.backgroundColor = UIColor.cyan
        buttonPressE()
    }
    
    @IBAction func FSharpKeyTouchDown(_ sender: UIButton) {
        FSharpKey.backgroundColor = UIColor.cyan
        buttonPressFSharp()
    }
    
  
    @IBAction func GSharpKeyTouchDown(_ sender: UIButton) {
        GSharpKey.backgroundColor = UIColor.cyan
        buttonPressGSharp()
    }
    
    @IBAction func ASharpKeyTouchDown(_ sender: UIButton) {
        ASharpKey.backgroundColor = UIColor.cyan
        buttonPressASharp()
    }
   
    @IBAction func CSharpKeyTouchDown(_ sender: UIButton) {
        CSharpKey.backgroundColor = UIColor.cyan
        buttonPressCSharp()
    }
    
    
    @IBAction func DSharpKeyTouchDown(_ sender: UIButton) {
        DSharpKey.backgroundColor = UIColor.cyan
        buttonPressDSharp()
    }
    /////Keys lift up///
    
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
    
    //////////Override func//////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    ////////sound functions/
    func buttonPressF() {
        if let path = Bundle.main.path(forResource: "FKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                F = try AVAudioPlayer(contentsOf: url)
                F.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressFSharp() {
        if let path = Bundle.main.path(forResource: "FSharpKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                FSharp = try AVAudioPlayer(contentsOf: url)
                FSharp.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressG() {
        if let path = Bundle.main.path(forResource: "GKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                G = try AVAudioPlayer(contentsOf: url)
                G.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressGSharp() {
        if let path = Bundle.main.path(forResource: "GSharpKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                GSharp = try AVAudioPlayer(contentsOf: url)
                GSharp.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressA() {
        if let path = Bundle.main.path(forResource: "AKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                A = try AVAudioPlayer(contentsOf: url)
                A.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressASharp() {
        if let path = Bundle.main.path(forResource: "ASharpKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                ASharp = try AVAudioPlayer(contentsOf: url)
                ASharp.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
    func buttonPressB() {
        if let path = Bundle.main.path(forResource: "BKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                B = try AVAudioPlayer(contentsOf: url)
                B.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressC() {
        if let path = Bundle.main.path(forResource: "CKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                C = try AVAudioPlayer(contentsOf: url)
                C.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressCSharp() {
        if let path = Bundle.main.path(forResource: "CSharpKey ", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                CSharp = try AVAudioPlayer(contentsOf: url)
                CSharp.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
    func buttonPressD() {
        if let path = Bundle.main.path(forResource: "DKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                D = try AVAudioPlayer(contentsOf: url)
                D.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressDSharp() {
        if let path = Bundle.main.path(forResource: "DSharpKey", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                DSharp = try AVAudioPlayer(contentsOf: url)
                DSharp.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    func buttonPressE() {
        if let path = Bundle.main.path(forResource: "EKey ", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                E = try AVAudioPlayer(contentsOf: url)
                E.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
    func metranomeStart() {
        if let path = Bundle.main.path(forResource: "100BPM", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                metranome = try AVAudioPlayer(contentsOf: url)
                metranome.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
   /////////Extra Actions///
    @IBAction func octaveSliderAction(_ sender: UISlider) {
        
    }
    
    @IBAction func startMetranome(_ sender: UIButton) {
        metranomeStart()
    }
    @IBAction func stopMetranome(_ sender: UIButton) {
        if metranome.isPlaying {
            metranome.pause()
        }
    }
    
    
    
    @IBAction func easyModeAction(_ sender: UIButton) {
        FSharpKeyEasyMode.text = "F#"
        GSharpKeyEasyMode.text = "G#"
        ASharpKeyEasyMode.text = "A#"
        CSharpKeyEasyMode.text = "C#"
        DSharpKeyEasyMode.text = "D#"
        FKeyEasyMode.text = "F"
        GKeyEasyMode.text = "G"
        AKeyEasyMode.text = "A"
        BKeyEasyMode.text = "B"
        CKeyEasyMode.text = "C"
        DKeyEasyMode.text = "D"
        EKeyEasyMode.text = "E"
      
    FSharpKeyEasyMode.textColor = UIColor.red
    GSharpKeyEasyMode.textColor = UIColor.red
    ASharpKeyEasyMode.textColor = UIColor.red
    CSharpKeyEasyMode.textColor = UIColor.red
    DSharpKeyEasyMode.textColor = UIColor.red
        FKeyEasyMode.textColor = UIColor.red
        GKeyEasyMode.textColor = UIColor.red
        AKeyEasyMode.textColor = UIColor.red
        BKeyEasyMode.textColor = UIColor.red
        CKeyEasyMode.textColor = UIColor.red
        DKeyEasyMode.textColor = UIColor.red
        EKeyEasyMode.textColor = UIColor.red
        
        FSharpKeyEasyMode.isHidden = false
        GSharpKeyEasyMode.isHidden = false
        ASharpKeyEasyMode.isHidden = false
        CSharpKeyEasyMode.isHidden = false
        DSharpKeyEasyMode.isHidden = false
        FKeyEasyMode.isHidden = false
        GKeyEasyMode.isHidden = false
        AKeyEasyMode.isHidden = false
        BKeyEasyMode.isHidden = false
        CKeyEasyMode.isHidden = false
        DKeyEasyMode.isHidden = false
        EKeyEasyMode.isHidden = false
        
    }
    
    @IBAction func hardModeAction(_ sender: UIButton) {
        FSharpKeyEasyMode.text = ""
        GSharpKeyEasyMode.text = ""
        ASharpKeyEasyMode.text = ""
        CSharpKeyEasyMode.text = ""
        DSharpKeyEasyMode.text = ""
        FKeyEasyMode.text = ""
        GKeyEasyMode.text = ""
        AKeyEasyMode.text = ""
        BKeyEasyMode.text = ""
        CKeyEasyMode.text = ""
        DKeyEasyMode.text = ""
        EKeyEasyMode.text = ""
        FSharpKeyEasyMode.isHidden = true
        GSharpKeyEasyMode.isHidden = true
        ASharpKeyEasyMode.isHidden = true
        CSharpKeyEasyMode.isHidden = true
        DSharpKeyEasyMode.isHidden = true
        FKeyEasyMode.isHidden = true
        GKeyEasyMode.isHidden = true
        AKeyEasyMode.isHidden = true
        BKeyEasyMode.isHidden = true
        CKeyEasyMode.isHidden = true
        DKeyEasyMode.isHidden = true
        EKeyEasyMode.isHidden = true
        
    }
    
    @IBOutlet weak var FKeyEasyMode: UILabel!
    @IBOutlet weak var GKeyEasyMode: UILabel!
    @IBOutlet weak var AKeyEasyMode: UILabel!
    @IBOutlet weak var BKeyEasyMode: UILabel!
    @IBOutlet weak var CKeyEasyMode: UILabel!
    @IBOutlet weak var DKeyEasyMode: UILabel!
    @IBOutlet weak var EKeyEasyMode: UILabel!
    
    @IBOutlet weak var FSharpKeyEasyMode: UILabel!
    @IBOutlet weak var GSharpKeyEasyMode: UILabel!
    @IBOutlet weak var ASharpKeyEasyMode: UILabel!
    @IBOutlet weak var CSharpKeyEasyMode: UILabel!
    @IBOutlet weak var DSharpKeyEasyMode: UILabel!
    
    
    
}

