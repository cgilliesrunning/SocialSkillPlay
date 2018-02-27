//
//  PaintingSelectionScreen.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 25/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit

class ModeSelectionScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (sceneSelection)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ReturnToHome(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }

    
    @IBAction func modeSelectionButton(_ sender: UIButton) {
        if sender.tag == 1 {
            learningMode = "listenandlearn"
        }
        else if sender.tag == 2 {
            learningMode = "play"
        }
        performSegue(withIdentifier: "MoveToLearningMode", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MoveToLearningMode" {
            let destinationVC = segue.destination as! primaryLearningScreen
            destinationVC.modeSelection = learningMode
            destinationVC.sceneSelection = sceneSelection
            
        }
    }
    
}
