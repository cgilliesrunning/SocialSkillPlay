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
    var sceneSelection2 = ""
    var modeSelection = ""
    
    
    @IBAction func returnToHome(_ sender: Any) {
        
              self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var modeSelected: UILabel!
    @IBOutlet weak var sceneSelected: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        modeSelected.text = modeSelection
        sceneSelected.text = sceneSelection2
        print (sceneSelection2)
        print (modeSelection)

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func makeNoise(Selection: String) { //play the selected media play
        let soundURL = Bundle.main.url(forResource: Selection, withExtension: "mp3")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.play()
        }
        catch {
            print (error)
        }
    }

}

