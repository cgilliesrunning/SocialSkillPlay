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
        interateThoughQuestions()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func interateThoughQuestions () {
        
        if count == 0 && questionState == true {
            print ("you are up to question number: \(count) = \(finalArray.list[count].questionNumber)")
            let soundFileNameInput = sceneSelection+"Question"+String(finalArray.list[count].questionNumber)
            MakeMusicClass.shared.setup(Selection: soundFileNameInput)
            MakeMusicClass.shared.play()
            displayText.text = finalArray.list[count].questionText
            questionState = !questionState
        }
        
        else if count < 6 {
        print ("you are up to question number: \(count) = \(finalArray.list[count].questionNumber)")
        let soundFileNameInput = sceneSelection+"Question"+String(finalArray.list[count].questionNumber)
        MakeMusicClass.shared.setup(Selection: soundFileNameInput)
        MakeMusicClass.shared.play()
        displayText.text = finalArray.list[count].questionText
        questionState = !questionState
        }
    }
                        
    func interateThoughAnswers () {
            if count  < 6 && questionState == false {
                print ("you are up to answer number: \(count) = \(finalArray.list[count].answerNumber)")
                let soundFileNameInput = sceneSelection+"Answer"+String(finalArray.list[count].answerNumber)
                MakeMusicClass.shared.setup(Selection: soundFileNameInput)
                MakeMusicClass.shared.play()
                displayText.text = finalArray.list[count].answerText
                count += 1
                questionState = !questionState
                print ("Count: \(count)")
                if count == 6 {
                    performSegue(withIdentifier: "unwindSequeToHome", sender: self)
                    }
            }
    }
    
    @IBAction func nextquestion(_ sender: Any) {
        if questionState == true {
            interateThoughQuestions()
        }
        else if questionState == false {
            interateThoughAnswers()
        }
        
    }
}


