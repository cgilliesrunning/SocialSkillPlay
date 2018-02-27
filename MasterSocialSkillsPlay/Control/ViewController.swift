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
          sceneSelection = "painting"
            }
        else if sender.tag == 2 {
            sceneSelection = "playdoh"
        }
        performSegue(withIdentifier: "goToModeSelectionScreen", sender: self)
    }
    
    
//    @IBAction func Question(_ sender: UIButton) {
//
//        let sceneSelection = "Sandpit"
//        let finalArray = BuildRandomArrays(Selection: sceneSelection) // call the build array function
//
//        if count < 6 {
//
//            if questionState == true {
//                print ("you are up to question number: \(count) = \(finalArray.list[count].questionNumber)")
//                let soundFileNameInput = sceneSelection+"Question"+String(finalArray.list[count].questionNumber)
//                makeNoise(Selection: soundFileNameInput)
//                questionState = !questionState
//            }
//            else if questionState == false {
//                print ("you are up to answer number: \(count) = \(finalArray.list[count].answerNumber)")
//                let soundFileNameInput = sceneSelection+"Answer"+String(finalArray.list[count].answerNumber)
//                makeNoise(Selection: soundFileNameInput)
//                count += 1
//                questionState = !questionState
//                }
//            }
//        else if count == 6 {
//            viewDidLoad()
//        }
//
//}
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToModeSelectionScreen" {
//            let destinationVC = segue.destination as! ModeSelectionScreen
//            destinationVC.sceneSelection = aa
//
//        }
//
//    }
    
}
