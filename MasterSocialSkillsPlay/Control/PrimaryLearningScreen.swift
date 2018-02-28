////
////  LearningScreen.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 25/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
import UIKit
//import AVFoundation

class primaryLearningScreen: UIViewController {
    
    var count = 0
//    var audioPlayer : AVAudioPlayer!
    var questionState : Bool = true
    var sceneSelection = ""
    var modeSelection = ""
    let finalArray = BuildRandomArrays()
    var bbbbb = MakeMusicClass.init()

    @IBOutlet weak var modeSelected: UILabel!
    @IBOutlet weak var sceneSelected: UILabel!
    @IBOutlet weak var displayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modeSelected.text = modeSelection
        sceneSelected.text = sceneSelection
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    func makeNoise(soundFileName: String) { //play the selected media play
//        print ("the  sound file name is : " + soundFileName)
//        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
//        do {
//            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
//            audioPlayer.play()
//        }
//        catch {
//            print (error)
//        }
//    }
    
    @IBAction func nextquestion(_ sender: Any) {
        
                if count < 6 {
        
                    if questionState == true {
                        print ("you are up to question number: \(count) = \(finalArray.list[count].questionNumber)")
                        let soundFileNameInput = sceneSelection+"Question"+String(finalArray.list[count].questionNumber)
                        bbbbb.makeNoise(Selection: soundFileNameInput)
                        displayText.text = finalArray.list[count].questionText
                        questionState = !questionState
                    }
                    else if questionState == false {
                        print ("you are up to answer number: \(count) = \(finalArray.list[count].answerNumber)")
                        let soundFileNameInput = sceneSelection+"Answer"+String(finalArray.list[count].answerNumber)
                        bbbbb.makeNoise(Selection: soundFileNameInput)
                        displayText.text = finalArray.list[count].answerText
                        count += 1
                        questionState = !questionState
                        }
                    }
                else if count == 6 {
                    viewDidLoad()
                }
    }
}

