//
//  ViewController.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 17/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit
import AVFoundation

var sceneSelection = ""
var learningMode : String = ""

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    var questionState : Bool = true
    var count = 0
    var aaaaaa = MakeMusicClass.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        aaaaaa.makeNoise(Selection: "MenuAudio")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  // info screen button
    @IBAction func InfoScreen(_ sender: Any) {}
    
    @IBAction func unwindSequeToHome (seque: UIStoryboardSegue) {}
    @IBAction func SceneSelectionButtons(_ sender: UIButton) {
        
        if sender.tag == 1 {
          sceneSelection = "Painting"
            }
        else if sender.tag == 2 {
            sceneSelection = "Playdoh"
        }
        performSegue(withIdentifier: "goToModeSelectionScreen", sender: self)
    }
    
}
