////
////  LearningScreen.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 25/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
import UIKit

protocol RecorderViewDelegate : class {
    func didFinishRecording(_ recorderViewController: primaryLearningScreen)
}

class primaryLearningScreen: UIViewController, RecorderDelegate {
    
    open weak var delegate: RecorderViewDelegate?
    var recording: Recording!
    var recordDuration = 0

    
    var count = 0
    var questionState : Bool = true
//    var sceneSelection = ""
//    var modeSelection = ""
    let finalArray = BuildRandomArrays()
    var bbbbb = MakeMusicClass.init()
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var modeSelected: UILabel!
    @IBOutlet weak var sceneSelected: UILabel!
    @IBOutlet weak var displayText: UILabel!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modeSelected.text = learningMode
        sceneSelected.text = sceneSelection
        createRecorder()
        interateThoughQuestions()
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func interateThoughQuestions () {
        
                greenButton.isHidden = true
                redButton.isHidden = true
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
        
        if learningMode == "listenandlearn"{
                print (learningMode)
                greenButton.isHidden = false
                redButton.isHidden = false
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
        else if learningMode == "play" {

            createRecorder()
            startRecording()
        
        }
    }
    
    // buttons
    
    @IBAction func nextquestion(_ sender: Any) {
        
        if questionState == true {
            interateThoughQuestions()
        }
        else if questionState == false && learningMode == "listenandlearn" {
            interateThoughAnswers()
            }
        else if questionState == false && learningMode == "play" {
            performSegue(withIdentifier: "unwindSequeToHome", sender: self)
            }
        } // close next question func
    
    
    
    
    // functions for recording
    
    
    open func createRecorder() {
        recording = Recording(to: "recording.m4a")
        recording.delegate = self
        
        // Optionally, you can prepare the recording in the background to
        // make it start recording faster when you hit `record()`.
        
        DispatchQueue.global().async {
            // Background thread
            do {
                try self.recording.prepare()
            } catch {
                print(error)
            }
        }
    }
    
    open func startRecording() {
        recordDuration = 5
        do {
            try recording.record()
        } catch {
            print(error)
        }
    }
    
    @IBAction func stop() {
        
        delegate?.didFinishRecording(self)
        dismiss(animated: true, completion: nil)
        
        recordDuration = 0
        recording.stop()
        
    }
    
    func audioMeterDidUpdate(_ db: Float) {
        print("db level: %f", db)
        
        self.recording.recorder?.updateMeters()
        let ALPHA = 0.05
        let peakPower = pow(10, (ALPHA * Double((self.recording.recorder?.peakPower(forChannel: 0))!)))
        var rate: Double = 0.0
        if (peakPower <= 0.2) {
            rate = 0.2
        } else if (peakPower > 0.9) {
            rate = 1.0
        } else {
            rate = peakPower
        }
    
    
        
} 

}
