//
//  ViewController.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 17/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    var questionState : Bool = true
    var count = 0
    var finalArray = BuildRandomArrays(Selection: "Sandpit")
    
    
    // call the build array function - returns any array with the 6 question, respective answers and the question and answer text
//    let finalArray = BuildRandomArrays(Selection: sceneSelection)
//    let sceneSelection = "Sandpit" // used to capture the selection scene
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        let sceneSelection = "Sandpit"
        finalArray = BuildRandomArrays(Selection: sceneSelection) // call the build array function
        makeNoise(Selection: "MenuAudio")
        
    }
    
    func makeNoise(Selection: String) { //play the selected media play
        let soundURL = Bundle.main.url(forResource: Selection, withExtension: "mp3")
        do {
//            print (soundURL)
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.play()
        }
        catch {
            print (error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  // info screen button
    @IBAction func InfoScreen(_ sender: Any) {
        
        
        
    }
    

    @IBAction func Question(_ sender: UIButton) {

        let sceneSelection = "Sandpit"
//        let finalArray = BuildRandomArrays(Selection: sceneSelection) // call the build array function

        if count < 6 {
        
            if questionState == true {
                print ("you are up to question number: \(count) = \(finalArray.list[count].questionNumber)")
                let soundFileNameInput = sceneSelection+"Question"+String(finalArray.list[count].questionNumber)
                makeNoise(Selection: soundFileNameInput)
                questionState = !questionState
            }
            else if questionState == false {
                print ("you are up to answer number: \(count) = \(finalArray.list[count].answerNumber)")
                let soundFileNameInput = sceneSelection+"Answer"+String(finalArray.list[count].answerNumber)
                makeNoise(Selection: soundFileNameInput)
                count += 1
                questionState = !questionState
                }
            }
        else if count == 6 {
            viewDidLoad()
            
        }
        
        
}
}
