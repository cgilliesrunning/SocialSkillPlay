//
//  PaintingSelectionScreen.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 25/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit

class ModeSelectionScreen: UIViewController {
    
//    var bbbbbb = MakeMusicClass()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (sceneSelection)
        
        if sceneSelection == "Painting" {
            ModeSelectionScreenSceneImage.image = UIImage(named: "menu-painting")
        }
        else if sceneSelection == "PlayDoh" {
            ModeSelectionScreenSceneImage.image = UIImage(named: "menu-playdoh")
        }
        else if sceneSelection == "Playground" {
            ModeSelectionScreenSceneImage.image = UIImage(named: "menu-playground")
        }
        else if sceneSelection == "RidingBikes"  {
            ModeSelectionScreenSceneImage.image = UIImage(named: "menu-ridingbikes")
        }
        else if sceneSelection == "Sandpit"  {
            ModeSelectionScreenSceneImage.image = UIImage(named: "menu-sandpit")
        }
        else if sceneSelection == "HideSeek" {
            ModeSelectionScreenSceneImage.image = UIImage(named: "menu-hideseek")
        }
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
//            let destinationVC = segue.destination as! primaryLearningScreen
////            destinationVC.modeSelection = learningMode
////            destinationVC.sceneSelection = sceneSelection
//            print ("ccccccccccccccccc")
            MakeMusicClass.shared.stop()
        }
    }
    @IBOutlet weak var ModeSelectionScreenSceneImage: UIImageView!
    
    @IBAction func stopMusic(_ sender: Any) {
        MakeMusicClass.shared.stop()
    }
}
