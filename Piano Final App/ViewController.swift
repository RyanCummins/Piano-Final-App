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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    /////////White Keys///////
    @IBAction func F(_ sender: UITapGestureRecognizer) {
        
    }
    
    @IBAction func G(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func A(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func B(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func C(_ sender: UITapGestureRecognizer) {
        ButtonPressC()
    }
    
    @IBAction func D(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func E(_ sender: UITapGestureRecognizer) {
    }
    ////////////////////////
    //////Black Keys///////
    @IBAction func FSharpKey(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func GSharpKey(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func ASharpKey(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func CSharpKey(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func DSharpKey(_ sender: UITapGestureRecognizer) {
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

