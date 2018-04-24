//
//  ViewController.swift
//  Piano Final App
//
//  Created by Ryan Cummins on 4/16/18.
//  Copyright © 2018 Ryan Cummins. All rights reserved.

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var sound = AVAudioPlayer()
    
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /////////White Keys///////
    @IBAction func F(_ sender: UITapGestureRecognizer) {
        FKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func G(_ sender: UITapGestureRecognizer) {
        GKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func A(_ sender: UITapGestureRecognizer) {
        AKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func B(_ sender: UITapGestureRecognizer) {
        BKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func C(_ sender: UITapGestureRecognizer) {
        CKeyLabel.backgroundColor = UIColor.darkGray
        ButtonPressC()
    }
    
    @IBAction func D(_ sender: UITapGestureRecognizer) {
        DKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func E(_ sender: UITapGestureRecognizer) {
        EKeyLabel.backgroundColor = UIColor.darkGray
    }
    ////////////////////////
    //////Black Keys///////
    @IBAction func FSharpKey(_ sender: UITapGestureRecognizer) {
        FSharpKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func GSharpKey(_ sender: UITapGestureRecognizer) {
        GSharpKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func ASharpKey(_ sender: UITapGestureRecognizer) {
        ASharpKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func CSharpKey(_ sender: UITapGestureRecognizer) {
        CSharpKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func DSharpKey(_ sender: UITapGestureRecognizer) {
        DSharpKeyLabel.backgroundColor = UIColor.darkGray
    }
    
    func ButtonPressC() {
        if let path = Bundle.main.path(forResource: "Note C #1 - 4:4:18, 10.57 AM", ofType: "mp3") {
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
    
}

