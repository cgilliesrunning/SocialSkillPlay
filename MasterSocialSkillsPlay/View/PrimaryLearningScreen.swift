////
////  LearningScreen.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 25/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
//import UIKit
//import AVFoundation
//
//class LearningScreen: UIViewController {
//    
//    var count = 0
//    var audioPlayer : AVAudioPlayer!
//    var questionState : Bool = true
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//    func makeNoise(Selection: String) { //play the selected media play
//        let soundURL = Bundle.main.url(forResource: Selection, withExtension: "mp3")
//        do {
//            //            print (soundURL)
//            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
//            audioPlayer.play()
//        }
//        catch {
//            print (error)
//        }
//    }
//    
//    @IBAction func Question(_ sender: UIButton) {
//        
//        let sceneSelection = "Sandpit"
//        //        let finalArray = BuildRandomArrays(Selection: sceneSelection) // call the build array function
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
//            }
//        }
//        else if count == 6 {
//            viewDidLoad()
//            
//        }
//        
//    }
//    
//    
//    
//}

