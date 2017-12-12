//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audiplayer: AVAudioPlayer!
    var SelectedSoundFileName : String = ""
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        SelectedSoundFileName = soundArray[sender.tag - 1]
        
        playsound()
        
    }
    
    func playsound(){
        
        let soundURL = Bundle.main.url(forResource: SelectedSoundFileName, withExtension: "wav")
        do{
            audiplayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audiplayer.play()
    }
}

