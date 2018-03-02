//
//  ViewController.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 17/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit
//import AVFoundation

var sceneSelection = ""
var learningMode : String = ""

class ViewController: UIViewController {

//    var audioPlayer : AVAudioPlayer!
//    var questionState : Bool = true
    var count = 0
    var aaaaaa = MakeMusicClass.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        MakeMusicClass.shared.setup(Selection: "MenuAudio")
        MakeMusicClass.shared.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  // info screen button
    @IBAction func InfoScreen(_ sender: Any) {}
    
    @IBAction func unwindSequeToHome (seque: UIStoryboardSegue) {
        viewDidLoad()
    }
    
    @IBAction func SceneSelectionButtons(_ sender: UIButton) {
        
        if sender.tag == 1 {
          sceneSelection = "Painting"
            }
        else if sender.tag == 2 {
            sceneSelection = "PlayDoh"
        }
        else if sender.tag == 3 {
            sceneSelection = "Playground"
        }
        else if sender.tag == 4 {
            sceneSelection = "RidingBikes"
        }
        else if sender.tag == 5 {
            sceneSelection = "Sandpit"
        }
        else if sender.tag == 6 {
            sceneSelection = "HideSeek"
        }
        performSegue(withIdentifier: "goToModeSelectionScreen", sender: self)
    }
    
}
