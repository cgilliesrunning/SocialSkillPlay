////
////  LearningScreen.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 25/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
import UIKit
import AVFoundation

class primaryLearningScreen: UIViewController {
    
    var count = 0
    var audioPlayer : AVAudioPlayer!
    var questionState : Bool = true
    var sceneSelection = ""
    var modeSelection = ""
    let finalArray = BuildRandomArrays()

    @IBOutlet weak var modeSelected: UILabel!
    @IBOutlet weak var sceneSelected: UILabel!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modeSelected.text = modeSelection
        sceneSelected.text = sceneSelection
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func makeNoise(soundFileName: String) { //play the selected media play
        print ("the  sound file name is : " + soundFileName)
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.play()
        }
        catch {
            print (error)
        }
    }
    
    @IBOutlet weak var displayText: UILabel!
    
    @IBAction func nextquestion(_ sender: Any) {
        
                if count < 6 {
        
                    if questionState == true {
                        print ("you are up to question number: \(count) = \(finalArray.list[count].questionNumber)")
                        let soundFileNameInput = sceneSelection+"Question"+String(finalArray.list[count].questionNumber)
                        makeNoise(soundFileName: soundFileNameInput)
                        questionState = !questionState
                    }
                    else if questionState == false {
                        print ("you are up to answer number: \(count) = \(finalArray.list[count].answerNumber)")
                        let soundFileNameInput = sceneSelection+"Answer"+String(finalArray.list[count].answerNumber)
                        makeNoise(soundFileName: soundFileNameInput)
                        count += 1
                        questionState = !questionState
                        }
                    }
                else if count == 6 {
                    viewDidLoad()
                }
    }
}

